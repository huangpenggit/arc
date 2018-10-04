//
//    //
//// Source code recreated from a .class file by IntelliJ IDEA
//// (powered by Fernflower decompiler)
////
//
//package com.arc.util.tem;
//
//import java.io.BufferedReader;
//import java.io.SystemFile;
//import java.io.FileInputStream;
//import java.io.FileOutputStream;
//import java.io.IOException;
//import java.io.InputStream;
//import java.io.InputStreamReader;
//import java.io.OutputStream;
//import java.io.UnsupportedEncodingException;
//import java.net.HttpURLConnection;
//import java.net.URL;
//import java.security.MessageDigest;
//import java.security.NoSuchAlgorithmException;
//import java.text.SimpleDateFormat;
//import java.util.Date;
//import java.util.HashMap;
//import java.util.Iterator;
//import java.util.LinkedList;
//import java.util.List;
//import java.util.Locale;
//import java.util.Map;
//import java.util.TimeZone;
//import java.util.Map.Entry;
//
//public class UpYun {
//    private static final String UTF8 = "UTF-8";
//    private final String VERSION = "2.0";
//    private final String SEPARATOR = "/";
//    private final String AUTHORIZATION = "Authorization";
//    private final String DATE = "Date";
//    private final String CONTENT_LENGTH = "Content-Length";
//    private final String CONTENT_MD5 = "Content-MD5";
//    private final String CONTENT_SECRET = "Content-Secret";
//    private final String MKDIR = "mkdir";
//    private final String X_UPYUN_WIDTH = "x-upyun-width";
//    private final String X_UPYUN_HEIGHT = "x-upyun-height";
//    private final String X_UPYUN_FRAMES = "x-upyun-frames";
//    private final String X_UPYUN_FILE_TYPE = "x-upyun-file-type";
//    private final String X_UPYUN_FILE_SIZE = "x-upyun-file-size";
//    private final String X_UPYUN_FILE_DATE = "x-upyun-file-date";
//    private final String METHOD_HEAD = "HEAD";
//    private final String METHOD_GET = "GET";
//    private final String METHOD_PUT = "PUT";
//    private final String METHOD_DELETE = "DELETE";
//    public static final String ED_AUTO = "v0.api.upyun.com";
//    public static final String ED_TELECOM = "v1.api.upyun.com";
//    public static final String ED_CNC = "v2.api.upyun.com";
//    public static final String ED_CTT = "v3.api.upyun.com";
//    public boolean debug = false;
//    private int timeout = 30000;
//    private String apiDomain = "v0.api.upyun.com";
//    private String contentMD5 = null;
//    private String fileSecret = null;
//    protected String bucketName = null;
//    protected String userName = null;
//    protected String password = null;
//    protected String picWidth = null;
//    protected String picHeight = null;
//    protected String picFrames = null;
//    protected String picType = null;
//    protected String fileType = null;
//    protected String fileSize = null;
//    protected String fileDate = null;
//
//    public UpYun(String bucketName, String userName, String password) {
//        this.bucketName = bucketName;
//        this.userName = userName;
//        this.password = md5(password);
//    }
//
//    public void setApiDomain(String domain) {
//        this.apiDomain = domain;
//    }
//
//    public String getApiDomain() {
//        return this.apiDomain;
//    }
//
//    public void setTimeout(int second) {
//        this.timeout = second * 1000;
//    }
//
//    public int getTimeout() {
//        return this.timeout;
//    }
//
//    public boolean isDebug() {
//        return this.debug;
//    }
//
//    public void setDebug(boolean debug) {
//        this.debug = debug;
//    }
//
//    public void setContentMD5(String md5Value) {
//        this.contentMD5 = md5Value;
//    }
//
//    public void setFileSecret(String secret) {
//        this.fileSecret = secret;
//    }
//
//    public String getPicWidth() {
//        return this.picWidth;
//    }
//
//    public String getPicHeight() {
//        return this.picHeight;
//    }
//
//    public String getPicFrames() {
//        return this.picFrames;
//    }
//
//    public String getPicType() {
//        return this.picType;
//    }
//
//    public String version() {
//        return "2.0";
//    }
//
//    public long getBucketUsage() {
//        long usage = -1L;
//        String result = this.HttpAction("GET", this.formatPath("/") + "/?usage");
//        if (!this.isEmpty(result)) {
//            try {
//                usage = Long.parseLong(result.trim());
//            } catch (NumberFormatException var5) {
//                ;
//            }
//        }
//
//        return usage;
//    }
//
//    /** @deprecated */
//    @Deprecated
//    public long getFolderUsage(String path) {
//        long usage = -1L;
//        String result = this.HttpAction("GET", this.formatPath(path) + "/?usage");
//        if (!this.isEmpty(result)) {
//            try {
//                usage = Long.parseLong(result.trim());
//            } catch (NumberFormatException var6) {
//                ;
//            }
//        }
//
//        return usage;
//    }
//
//    public boolean writeFile(String filePath, byte[] datas) {
//        return this.writeFile(filePath, (byte[])datas, false, (Map)null);
//    }
//
//    public boolean writeFile(String filePath, byte[] datas, boolean auto) {
//        return this.writeFile(filePath, (byte[])datas, auto, (Map)null);
//    }
//
//    public boolean writeFile(String filePath, byte[] datas, boolean auto, Map<String, String> params) {
//        return this.HttpAction("PUT", this.formatPath(filePath), datas, (SystemFile)null, auto, params) != null;
//    }
//
//    public boolean writeFile(String filePath, String datas) {
//        return this.writeFile(filePath, (String)datas, false, (Map)null);
//    }
//
//    public boolean writeFile(String filePath, String datas, boolean auto) {
//        return this.writeFile(filePath, (String)datas, auto, (Map)null);
//    }
//
//    public boolean writeFile(String filePath, String datas, boolean auto, Map<String, String> params) {
//        boolean result = false;
//
//        try {
//            result = this.writeFile(filePath, datas.getBytes("UTF-8"), auto, params);
//        } catch (Exception var7) {
//            var7.printStackTrace();
//        }
//
//        return result;
//    }
//
//    public boolean writeFile(String filePath, SystemFile file) throws IOException {
//        return this.writeFile(filePath, (SystemFile)file, false, (Map)null);
//    }
//
//    public boolean writeFile(String filePath, SystemFile file, boolean auto) throws IOException {
//        return this.writeFile(filePath, (SystemFile)file, auto, (Map)null);
//    }
//
//    public boolean writeFile(String filePath, SystemFile file, boolean auto, Map<String, String> params) throws IOException {
//        filePath = this.formatPath(filePath);
//        InputStream is = null;
//        OutputStream os = null;
//        HttpURLConnection conn = null;
//
//        boolean var9;
//        try {
//            is = new FileInputStream(file);
//            URL url = new URL("http://" + this.apiDomain + filePath);
//            conn = (HttpURLConnection)url.openConnection();
//            conn.setConnectTimeout(this.timeout);
//            conn.setRequestMethod("PUT");
//            conn.setUseCaches(false);
//            conn.setDoOutput(true);
//            conn.setRequestProperty("Date", this.getGMTDate());
//            conn.setRequestProperty("Authorization", this.sign(conn, filePath, (long)is.available()));
//            if (!this.isEmpty(this.contentMD5)) {
//                conn.setRequestProperty("Content-MD5", this.contentMD5);
//                this.contentMD5 = null;
//            }
//
//            if (!this.isEmpty(this.fileSecret)) {
//                conn.setRequestProperty("Content-Secret", this.fileSecret);
//                this.fileSecret = null;
//            }
//
//            if (auto) {
//                conn.setRequestProperty("mkdir", "true");
//            }
//
//            if (params != null && !params.isEmpty()) {
//                Iterator var17 = params.entrySet().iterator();
//
//                while(var17.hasNext()) {
//                    Entry<String, String> param = (Entry)var17.next();
//                    conn.setRequestProperty((String)param.getKey(), (String)param.getValue());
//                }
//            }
//
//            conn.connect();
//            os = conn.getOutputStream();
//            byte[] data = new byte[4096];
//            boolean var19 = false;
//
//            int temp;
//            while((temp = is.read(data)) != -1) {
//                os.write(data, 0, temp);
//            }
//
//            this.getText(conn, false);
//            boolean var11 = true;
//            return var11;
//        } catch (IOException var15) {
//            var15.printStackTrace();
//            var9 = false;
//        } finally {
//            if (os != null) {
//                os.close();
//                os = null;
//            }
//
//            if (is != null) {
//                is.close();
//                is = null;
//            }
//
//            if (conn != null) {
//                conn.disconnect();
//                conn = null;
//            }
//
//        }
//
//        return var9;
//    }
//
//    public String readFile(String filePath) {
//        return this.HttpAction("GET", this.formatPath(filePath));
//    }
//
//    public boolean readFile(String filePath, SystemFile file) {
//        String result = this.HttpAction("GET", this.formatPath(filePath), (byte[])null, file, false);
//        return "".equals(result);
//    }
//
//    public Map<String, String> getFileInfo(String filePath) {
//        this.HttpAction("HEAD", this.formatPath(filePath));
//        if (this.isEmpty(this.fileType) && this.isEmpty(this.fileSize) && this.isEmpty(this.fileDate)) {
//            return null;
//        } else {
//            Map<String, String> mp = new HashMap();
//            mp.put("type", this.fileType);
//            mp.put("size", this.fileSize);
//            mp.put("date", this.fileDate);
//            return mp;
//        }
//    }
//
//    public boolean deleteFile(String filePath) {
//        return this.HttpAction("DELETE", this.formatPath(filePath)) != null;
//    }
//
//    public boolean mkDir(String path) {
//        return this.mkDir(path, false);
//    }
//
//    public boolean mkDir(String path, boolean auto) {
//        Map<String, String> params = new HashMap(1);
//        params.put(PARAMS.KEY_MAKE_DIR.getValue(), "true");
//        String result = this.HttpAction("PUT", this.formatPath(path), (byte[])null, (SystemFile)null, auto, params);
//        return result != null;
//    }
//
//    public List<FolderItem> readDir(String path) {
//        String result = this.HttpAction("GET", this.formatPath(path) + "/");
//        if (this.isEmpty(result)) {
//            return null;
//        } else {
//            List<FolderItem> list = new LinkedList();
//            String[] datas = result.split("\n");
//
//            for(int i = 0; i < datas.length; ++i) {
//                if (datas[i].indexOf("\t") > 0) {
//                    list.add(new FolderItem(datas[i]));
//                }
//            }
//
//            return list;
//        }
//    }
//
//    public boolean rmDir(String path) {
//        return this.HttpAction("DELETE", this.formatPath(path)) != null;
//    }
//
//    /** @deprecated */
//    public String getWritedFileInfo(String key) {
//        if (this.isEmpty(this.picWidth)) {
//            return null;
//        } else if ("x-upyun-width".equals(key)) {
//            return this.picWidth;
//        } else if ("x-upyun-height".equals(key)) {
//            return this.picHeight;
//        } else if ("x-upyun-frames".equals(key)) {
//            return this.picFrames;
//        } else {
//            return "x-upyun-file-type".equals(key) ? this.picType : null;
//        }
//    }
//
//    public static String md5(String str) {
//        char[] hexDigits = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
//        MessageDigest md5 = null;
//
//        try {
//            md5 = MessageDigest.getInstance("MD5");
//            md5.update(str.getBytes("UTF-8"));
//        } catch (NoSuchAlgorithmException var9) {
//            var9.printStackTrace();
//            throw new RuntimeException(var9.getMessage());
//        } catch (UnsupportedEncodingException var10) {
//            var10.printStackTrace();
//            throw new RuntimeException(var10.getMessage());
//        }
//
//        byte[] encodedValue = md5.digest();
//        int j = encodedValue.length;
//        char[] finalValue = new char[j * 2];
//        int k = 0;
//
//        for(int i = 0; i < j; ++i) {
//            byte encoded = encodedValue[i];
//            finalValue[k++] = hexDigits[encoded >> 4 & 15];
//            finalValue[k++] = hexDigits[encoded & 15];
//        }
//
//        return new String(finalValue);
//    }
//
//    public static String md5(SystemFile file) throws IOException {
//        FileInputStream is = new FileInputStream(file);
//        char[] hexDigits = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
//        MessageDigest md5 = null;
//
//        try {
//            md5 = MessageDigest.getInstance("MD5");
//            int n = false;
//            byte[] buffer = new byte[1024];
//
//            while(true) {
//                int n = is.read(buffer);
//                if (n > 0) {
//                    md5.update(buffer, 0, n);
//                }
//
//                if (n == -1) {
//                    is.skip(0L);
//                    break;
//                }
//            }
//        } catch (NoSuchAlgorithmException var12) {
//            var12.printStackTrace();
//            throw new RuntimeException(var12.getMessage());
//        } finally {
//            is.close();
//        }
//
//        byte[] encodedValue = md5.digest();
//        int j = encodedValue.length;
//        char[] finalValue = new char[j * 2];
//        int var7 = 0;
//
//        for(int i = 0; i < j; ++i) {
//            byte encoded = encodedValue[i];
//            finalValue[var7++] = hexDigits[encoded >> 4 & 15];
//            finalValue[var7++] = hexDigits[encoded & 15];
//        }
//
//        return new String(finalValue);
//    }
//
//    private String getGMTDate() {
//        SimpleDateFormat formater = new SimpleDateFormat("EEE, d MMM yyyy HH:mm:ss 'GMT'", Locale.US);
//        formater.setTimeZone(TimeZone.getTimeZone("GMT"));
//        return formater.format(new Date());
//    }
//
//    private String sign(HttpURLConnection conn, String uri, long length) {
//        String sign = conn.getRequestMethod() + "&" + uri + "&" + conn.getRequestProperty("Date") + "&" + length + "&" + this.password;
//        return "UpYun " + this.userName + ":" + md5(sign);
//    }
//
//    private String HttpAction(String method, String uri) {
//        return this.HttpAction(method, uri, (byte[])null, (SystemFile)null, false);
//    }
//
//    private String HttpAction(String method, String uri, byte[] datas, SystemFile outFile, boolean auto) {
//        return this.HttpAction(method, uri, datas, outFile, auto, (Map)null);
//    }
//
//    private String HttpAction(String method, String uri, byte[] datas, SystemFile outFile, boolean auto, Map<String, String> params) {
//        String result = null;
//        HttpURLConnection conn = null;
//        OutputStream os = null;
//        InputStream is = null;
//
//        Object var12;
//        try {
//            URL url = new URL("http://" + this.apiDomain + uri);
//            conn = (HttpURLConnection)url.openConnection();
//            conn.setConnectTimeout(this.timeout);
//            conn.setRequestMethod(method);
//            conn.setUseCaches(false);
//            conn.setDoOutput(true);
//            conn.setRequestProperty("Date", this.getGMTDate());
//            if (auto) {
//                conn.setRequestProperty("mkdir", "true");
//            }
//
//            long contentLength = 0L;
//            if (datas == null) {
//                conn.setRequestProperty("Content-Length", "0");
//            } else {
//                contentLength = (long)datas.length;
//                conn.setRequestProperty("Content-Length", String.valueOf(datas.length));
//                if (!this.isEmpty(this.contentMD5)) {
//                    conn.setRequestProperty("Content-MD5", this.contentMD5);
//                    this.contentMD5 = null;
//                }
//
//                if (!this.isEmpty(this.fileSecret)) {
//                    conn.setRequestProperty("Content-Secret", this.fileSecret);
//                    this.fileSecret = null;
//                }
//            }
//
//            conn.setRequestProperty("Authorization", this.sign(conn, uri, contentLength));
//            boolean isFolder = false;
//            if (params != null && !params.isEmpty()) {
//                isFolder = !this.isEmpty((String)params.get(PARAMS.KEY_MAKE_DIR.getValue()));
//                Iterator var15 = params.entrySet().iterator();
//
//                while(var15.hasNext()) {
//                    Entry<String, String> param = (Entry)var15.next();
//                    conn.setRequestProperty((String)param.getKey(), (String)param.getValue());
//                }
//            }
//
//            conn.connect();
//            if (datas != null) {
//                os = conn.getOutputStream();
//                ((OutputStream)os).write(datas);
//                ((OutputStream)os).flush();
//            }
//
//            if (isFolder) {
//                os = conn.getOutputStream();
//                ((OutputStream)os).flush();
//            }
//
//            if (outFile != null) {
//                result = "";
//                os = new FileOutputStream(outFile);
//                byte[] data = new byte[4096];
//                int temp = false;
//                is = conn.getInputStream();
//
//                int temp;
//                while((temp = is.read(data)) != -1) {
//                    ((OutputStream)os).write(data, 0, temp);
//                }
//
//                return result;
//            }
//
//            result = this.getText(conn, "HEAD".equals(method));
//            return result;
//        } catch (IOException var25) {
//            if (this.debug) {
//                var25.printStackTrace();
//            }
//
//            var12 = null;
//        } finally {
//            try {
//                if (os != null) {
//                    ((OutputStream)os).close();
//                    os = null;
//                }
//
//                if (is != null) {
//                    is.close();
//                    is = null;
//                }
//            } catch (IOException var24) {
//                var24.printStackTrace();
//            }
//
//            if (conn != null) {
//                conn.disconnect();
//                conn = null;
//            }
//
//        }
//
//        return (String)var12;
//    }
//
//    private String getText(HttpURLConnection conn, boolean isHeadMethod) throws IOException {
//        StringBuilder text = new StringBuilder();
//        this.fileType = null;
//        InputStream is = null;
//        InputStreamReader sr = null;
//        BufferedReader br = null;
//        int code = conn.getResponseCode();
//
//        try {
//            is = code >= 400 ? conn.getErrorStream() : conn.getInputStream();
//            if (!isHeadMethod) {
//                sr = new InputStreamReader(is);
//                br = new BufferedReader(sr);
//                char[] chars = new char[4096];
//                boolean var9 = false;
//
//                int length;
//                while((length = br.read(chars)) != -1) {
//                    text.append(chars, 0, length);
//                }
//            }
//
//            if (200 == code && conn.getHeaderField("x-upyun-width") != null) {
//                this.picWidth = conn.getHeaderField("x-upyun-width");
//                this.picHeight = conn.getHeaderField("x-upyun-height");
//                this.picFrames = conn.getHeaderField("x-upyun-frames");
//                this.picType = conn.getHeaderField("x-upyun-file-type");
//            } else {
//                this.picWidth = this.picHeight = this.picFrames = this.picType = null;
//            }
//
//            if (200 == code && conn.getHeaderField("x-upyun-file-type") != null) {
//                this.fileType = conn.getHeaderField("x-upyun-file-type");
//                this.fileSize = conn.getHeaderField("x-upyun-file-size");
//                this.fileDate = conn.getHeaderField("x-upyun-file-date");
//            } else {
//                this.fileType = this.fileSize = this.fileDate = null;
//            }
//        } finally {
//            if (br != null) {
//                br.close();
//                br = null;
//            }
//
//            if (sr != null) {
//                sr.close();
//                sr = null;
//            }
//
//            if (is != null) {
//                is.close();
//                is = null;
//            }
//
//        }
//
//        if (isHeadMethod) {
//            return code >= 400 ? null : "";
//        } else if (code >= 400) {
//            throw new IOException(text.toString());
//        } else {
//            return text.toString();
//        }
//    }
//
//    private boolean isEmpty(String str) {
//        return str == null || str.length() == 0;
//    }
//
//    private String formatPath(String path) {
//        if (!this.isEmpty(path)) {
//            path = path.trim();
//            if (!path.startsWith("/")) {
//                return "/" + this.bucketName + "/" + path;
//            }
//        }
//
//        return "/" + this.bucketName + path;
//    }
//
//    public static enum PARAMS {
//        KEY_X_GMKERL_TYPE("x-gmkerl-type"),
//        KEY_X_GMKERL_VALUE("x-gmkerl-value"),
//        KEY_X_GMKERL_QUALITY("x-gmkerl-quality"),
//        KEY_X_GMKERL_UNSHARP("x-gmkerl-unsharp"),
//        KEY_X_GMKERL_THUMBNAIL("x-gmkerl-thumbnail"),
//        KEY_X_GMKERL_ROTATE("x-gmkerl-rotate"),
//        KEY_X_GMKERL_CROP("x-gmkerl-crop"),
//        KEY_X_GMKERL_EXIF_SWITCH("x-gmkerl-exif-switch"),
//        KEY_MAKE_DIR("folder"),
//        VALUE_FIX_MAX("fix_max"),
//        VALUE_FIX_MIN("fix_min"),
//        VALUE_FIX_WIDTH_OR_HEIGHT("fix_width_or_height"),
//        VALUE_FIX_WIDTH("fix_width"),
//        VALUE_FIX_HEIGHT("fix_height"),
//        VALUE_SQUARE("square"),
//        VALUE_FIX_BOTH("fix_both"),
//        VALUE_FIX_SCALE("fix_scale"),
//        VALUE_ROTATE_AUTO("auto"),
//        VALUE_ROTATE_90("90"),
//        VALUE_ROTATE_180("180"),
//        VALUE_ROTATE_270("270");
//
//        private final String value;
//
//        private PARAMS(String val) {
//            this.value = val;
//        }
//
//        public String getValue() {
//            return this.value;
//        }
//    }
//
//    public class FolderItem {
//        public String name;
//        public String type;
//        public long size;
//        public Date date;
//
//        public FolderItem(String data) {
//            String[] a = data.split("\t");
//            if (a.length == 4) {
//                this.name = a[0];
//                this.type = "N".equals(a[1]) ? "SystemFile" : "Folder";
//
//                try {
//                    this.size = Long.parseLong(a[2].trim());
//                } catch (NumberFormatException var8) {
//                    this.size = -1L;
//                }
//
//                long da = 0L;
//
//                try {
//                    da = Long.parseLong(a[3].trim());
//                } catch (NumberFormatException var7) {
//                    ;
//                }
//
//                this.date = new Date(da * 1000L);
//            }
//
//        }
//
//        public String toString() {
//            return "time = " + this.date + "  size = " + this.size + "  type = " + this.type + "  name = " + this.name;
//        }
//    }
//}
//
