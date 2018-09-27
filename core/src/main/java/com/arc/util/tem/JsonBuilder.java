package com.arc.util.tem;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 根据确定的值构造Json和Map
 * @author lixinjie
 * @since 2017-09-24
 */
public class JsonBuilder {

	private ICElement root;
	private ICElement curr;

	public JsonBuilder() {
		root = new Root();
		curr = root;
	}

	public JsonBuilder kv(String name, Object value) {
		curr.addChild(new KeyValue(curr, name, value));
		return this;
	}

	public JsonBuilder ko(String name) {
		KeyObject keyObject = new KeyObject(curr, name);
		curr.addChild(keyObject);
		curr = keyObject;
		return this;
	}

	public JsonBuilder ka(String name) {
		KeyArray keyArray = new KeyArray(curr, name);
		curr.addChild(keyArray);
		curr = keyArray;
		return this;
	}

	public JsonBuilder iv(Object value) {
		curr.addChild(new ItemValue(curr, value));
		return this;
	}

	public JsonBuilder io() {
		ItemObject itemObject = new ItemObject(curr);
		curr.addChild(itemObject);
		curr = itemObject;
		return this;
	}

	public JsonBuilder end() {
		curr = curr.getParent();
		return this;
	}

	public String toJson() {
		return toJson(false);
	}

	public String toJson(boolean format) {
		StringBuilder sb = new StringBuilder(512);
		if (format) {
			root.toJson(0, sb);
		} else {
			root.toJson(sb);
		}
		return sb.toString();
	}

	public Map<String, Object> toMap() {
		Map<String, Object> map = new HashMap<>();
		root.toMap(new MapArrayHolder(map));
		return map;
	}

	public interface IElement {

		ICElement getParent();

		void toJson(StringBuilder sb);

		void toJson(int indent, StringBuilder sb);

		void toMap(MapArrayHolder holder);
	}

	public interface ICElement extends IElement {

		void addChild(IElement element);

		ElementList getChildren();
	}

	public interface IName {

		String getName();
	}

	public interface IValue {

		Object getValue();
	}

	public interface IKeyValue extends IName, IElement {

	}

	public interface IKeyObject extends IName, ICElement {

	}

	public interface IKeyArray extends IName, ICElement {

	}

	public interface IItemValue extends IElement {

	}

	public interface IItemObject extends ICElement {

	}

	public interface IRoot extends ICElement {

	}

	public static abstract class AbstractElement implements IElement {

		protected ICElement parent;

		protected AbstractElement(ICElement parent) {
			this.parent = parent;
		}

		@Override
		public ICElement getParent() {
			return parent;
		}

		@Override
		public abstract void toJson(StringBuilder sb);

		@Override
		public abstract void toJson(int indent, StringBuilder sb);

		@Override
		public abstract void toMap(MapArrayHolder holder);

		protected void jsonName(String name, StringBuilder sb) {
			sb.append('"').append(name).append('"').append(':');
		}

		protected void jsonValue(Object value, StringBuilder sb) {
			if (value instanceof String) {
				sb.append('"').append(value).append('"');
			} else {
				sb.append(value);
			}
		}

		protected void jsonIndent(int indent, StringBuilder sb) {
			for (int i = 0; i < indent; i++) {
				sb.append("  ");
			}
		}

		protected void jsonElementSeparator(StringBuilder sb) {
			sb.append(',');
		}

		protected void jsonCRLF(StringBuilder sb) {
			sb.append('\r').append('\n');
		}

		protected void mapNameValue(String name, Object value, MapArrayHolder holder) {
			holder.putMap(name, value);
		}

		protected void mapNameObject(String name, Map<String, Object> map, MapArrayHolder holder) {
			holder.putMap(name, map);
		}

		protected void mapNameArray(String name, List<Object> array, MapArrayHolder holder) {
			holder.putMap(name, array);
		}

		protected void arrayValue(Object value, MapArrayHolder holder) {
			holder.putArray(value);
		}

		protected void arrayObject(Map<String, Object> map, MapArrayHolder holder) {
			holder.putArray(map);
		}
	}

	public static abstract class AbstractCElement extends AbstractElement implements ICElement {

		private ElementList elementList;

		protected AbstractCElement(ICElement parent) {
			super(parent);
			elementList = new ElementList();
		}

		@Override
		public void addChild(IElement element) {
			elementList.add(element);
		}

		@Override
		public ElementList getChildren() {
			return elementList;
		}

		protected void jsonObjectBegin(StringBuilder sb) {
			sb.append('{');
		}

		protected void jsonObjectEnd(StringBuilder sb) {
			sb.append('}');
		}

		protected void jsonArrayBegin(StringBuilder sb) {
			sb.append('[');
		}

		protected void jsonArrayEnd(StringBuilder sb) {
			sb.append(']');
		}

		protected void jsonObjectChildren(StringBuilder sb) {
			if (!elementList.isEmpty()) {
				for (IElement element : elementList) {
					element.toJson(sb);
					jsonElementSeparator(sb);
				}
				sb.setLength(sb.length() - 1);
			}
		}

		protected void jsonObjectChildren(int indent, StringBuilder sb) {
			if (!elementList.isEmpty()) {
				for (IElement element : elementList) {
					element.toJson(indent, sb);
					jsonElementSeparator(sb);
					jsonCRLF(sb);
				}
				sb.setLength(sb.length() - 3);
			}
		}

		protected void jsonArrayChildren(StringBuilder sb) {
			if (!elementList.isEmpty()) {
				for (IElement element : elementList) {
					element.toJson(sb);
					jsonElementSeparator(sb);
				}
				sb.setLength(sb.length() - 1);
			}
		}

		protected void jsonArrayChildren(int indent, StringBuilder sb) {
			if (!elementList.isEmpty()) {
				for (IElement element : elementList) {
					element.toJson(indent, sb);
					jsonElementSeparator(sb);
					jsonCRLF(sb);
				}
				sb.setLength(sb.length() - 3);
			}
		}

		protected void mapObjectChildren(MapArrayHolder holder) {
			if (!elementList.isEmpty()) {
				for (IElement element : elementList) {
					element.toMap(holder);
				}
			}
		}

		protected void mapArrayChildren(MapArrayHolder holder) {
			if (!elementList.isEmpty()) {
				for (IElement element : elementList) {
					element.toMap(holder);
				}
			}
		}
	}

	public static class KeyValue extends AbstractElement implements IKeyValue, IValue {

		private String name;
		private Object value;

		public KeyValue(ICElement parent, String name, Object value) {
			super(parent);
			this.name = name;
			this.value = value;
		}

		@Override
		public String getName() {
			return name;
		}

		@Override
		public Object getValue() {
			return value;
		}

		@Override
		public void toJson(StringBuilder sb) {
			jsonName(name, sb);
			jsonValue(value, sb);
		}

		@Override
		public void toJson(int indent, StringBuilder sb) {
			jsonIndent(indent, sb);
			toJson(sb);
		}

		@Override
		public void toMap(MapArrayHolder holder) {
			mapNameValue(name, value, holder);
		}
	}

	public static class KeyObject extends AbstractCElement implements IKeyObject {

		private String name;

		public KeyObject(ICElement parent, String name) {
			super(parent);
			this.name = name;
		}

		@Override
		public String getName() {
			return name;
		}

		@Override
		public void toJson(StringBuilder sb) {
			jsonName(name, sb);
			jsonObjectBegin(sb);
			jsonObjectChildren(sb);
			jsonObjectEnd(sb);
		}

		@Override
		public void toJson(int indent, StringBuilder sb) {
			jsonIndent(indent, sb);
			jsonName(name, sb);
			jsonObjectBegin(sb);
			jsonCRLF(sb);
			jsonObjectChildren(indent + 1, sb);
			jsonCRLF(sb);
			jsonIndent(indent, sb);
			jsonObjectEnd(sb);
		}

		@Override
		public void toMap(MapArrayHolder holder) {
			Map<String, Object> map = new HashMap<>();
			mapNameObject(name, map, holder);
			mapObjectChildren(new MapArrayHolder(map));
		}
	}

	public static class KeyArray extends AbstractCElement implements IKeyArray {

		private String name;

		protected KeyArray(ICElement parent, String name) {
			super(parent);
			this.name = name;
		}

		@Override
		public String getName() {
			return name;
		}

		@Override
		public void toJson(StringBuilder sb) {
			jsonName(name, sb);
			jsonArrayBegin(sb);
			jsonArrayChildren(sb);
			jsonArrayEnd(sb);
		}

		@Override
		public void toJson(int indent, StringBuilder sb) {
			jsonIndent(indent, sb);
			jsonName(name, sb);
			jsonArrayBegin(sb);
			jsonCRLF(sb);
			jsonArrayChildren(indent + 1, sb);
			jsonCRLF(sb);
			jsonIndent(indent, sb);
			jsonArrayEnd(sb);
		}

		@Override
		public void toMap(MapArrayHolder holder) {
			List<Object> array = new ArrayList<>();
			mapNameArray(name, array, holder);
			mapArrayChildren(new MapArrayHolder(array));
		}
	}

	public static class ItemValue extends AbstractElement implements IItemValue, IValue {

		private Object value;

		protected ItemValue(ICElement parent, Object value) {
			super(parent);
			this.value = value;
		}

		@Override
		public Object getValue() {
			return value;
		}

		@Override
		public void toJson(StringBuilder sb) {
			jsonValue(value, sb);
		}

		@Override
		public void toJson(int indent, StringBuilder sb) {
			jsonIndent(indent, sb);
			toJson(sb);
		}

		@Override
		public void toMap(MapArrayHolder holder) {
			arrayValue(value, holder);
		}
	}

	public static class ItemObject extends AbstractCElement implements IItemObject {

		protected ItemObject(ICElement parent) {
			super(parent);
		}

		@Override
		public void toJson(StringBuilder sb) {
			jsonObjectBegin(sb);
			jsonObjectChildren(sb);
			jsonObjectEnd(sb);
		}

		@Override
		public void toJson(int indent, StringBuilder sb) {
			jsonIndent(indent, sb);
			jsonObjectBegin(sb);
			jsonCRLF(sb);
			jsonObjectChildren(indent + 1, sb);
			jsonCRLF(sb);
			jsonIndent(indent, sb);
			jsonObjectEnd(sb);
		}

		@Override
		public void toMap(MapArrayHolder holder) {
			Map<String, Object> map = new HashMap<>();
			arrayObject(map, holder);
			mapObjectChildren(new MapArrayHolder(map));
		}
	}

	public static class Root extends AbstractCElement implements IRoot {

		public Root() {
			super(null);
		}

		@Override
		public void toJson(StringBuilder sb) {
			jsonObjectBegin(sb);
			jsonObjectChildren(sb);
			jsonObjectEnd(sb);
		}

		@Override
		public void toJson(int indent, StringBuilder sb) {
			jsonIndent(indent, sb);
			jsonObjectBegin(sb);
			jsonCRLF(sb);
			jsonObjectChildren(indent + 1, sb);
			jsonCRLF(sb);
			jsonIndent(indent, sb);
			jsonObjectEnd(sb);
		}

		@Override
		public void toMap(MapArrayHolder holder) {
			mapObjectChildren(holder);
		}
	}

	public static class ElementList extends ArrayList<IElement> {

		private static final long serialVersionUID = 2966834684665318643L;

	}

	public static class MapArrayHolder {

		private Map<String, Object> map;
		private List<Object> array;

		public MapArrayHolder(Map<String, Object> map) {
			this.map = map;
		}

		public MapArrayHolder(List<Object> array) {
			this.array = array;
		}

		public void putMap(String name, Object value) {
			map.put(name, value);
		}

		public void putArray(Object value) {
			array.add(value);
		}
	}
}
