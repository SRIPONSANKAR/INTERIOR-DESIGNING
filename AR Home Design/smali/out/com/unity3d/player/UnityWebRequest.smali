.class Lcom/unity3d/player/UnityWebRequest;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final k:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;

.field private e:Z

.field private f:I

.field private g:J

.field private h:J

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    :cond_e
    new-instance v0, Lcom/unity3d/player/UnityWebRequest$1;

    invoke-direct {v0}, Lcom/unity3d/player/UnityWebRequest$1;-><init>()V

    sput-object v0, Lcom/unity3d/player/UnityWebRequest;->k:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method constructor <init>(JLjava/lang/String;Ljava/util/Map;Ljava/lang/String;ZI)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    iput-object p5, p0, Lcom/unity3d/player/UnityWebRequest;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/player/UnityWebRequest;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/unity3d/player/UnityWebRequest;->d:Ljava/util/Map;

    iput-boolean p6, p0, Lcom/unity3d/player/UnityWebRequest;->e:Z

    iput p7, p0, Lcom/unity3d/player/UnityWebRequest;->f:I

    return-void
.end method

.method static clearCookieCache(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-eqz v0, :cond_3a

    instance-of v1, v0, Ljava/net/CookieManager;

    if-nez v1, :cond_b

    goto :goto_3a

    :cond_b
    check-cast v0, Ljava/net/CookieManager;

    invoke-virtual {v0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    if-nez p0, :cond_1a

    invoke-interface {v0}, Ljava/net/CookieStore;->removeAll()Z

    return-void

    :cond_1a
    :try_start_1a
    new-instance v1, Ljava/net/URI;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3a

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/HttpCookie;

    invoke-interface {v0, v1, p1}, Ljava/net/CookieStore;->remove(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    :try_end_39
    .catch Ljava/net/URISyntaxException; {:try_start_1a .. :try_end_39} :catch_3a

    goto :goto_2a

    :catch_3a
    :cond_3a
    :goto_3a
    return-void
.end method

.method private static native contentLengthCallback(JI)V
.end method

.method private static native downloadCallback(JLjava/nio/ByteBuffer;I)Z
.end method

.method private static native errorCallback(JILjava/lang/String;)V
.end method

.method private hasTimedOut()Z
    .registers 7

    iget v0, p0, Lcom/unity3d/player/UnityWebRequest;->f:I

    const/4 v1, 0x0

    if-gtz v0, :cond_6

    return v1

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/unity3d/player/UnityWebRequest;->g:J

    sub-long/2addr v2, v4

    iget v0, p0, Lcom/unity3d/player/UnityWebRequest;->f:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    return v1
.end method

.method private static native headerCallback(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native responseCodeCallback(JI)V
.end method

.method private runSafe()V
    .registers 16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->g:J

    :try_start_6
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/unity3d/player/UnityWebRequest;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    iget v2, p0, Lcom/unity3d/player/UnityWebRequest;->f:I

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget v2, p0, Lcom/unity3d/player/UnityWebRequest;->f:I

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    instance-of v2, v1, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v3, 0x0

    if-eqz v2, :cond_3c

    move-object v2, v1

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    iget-boolean v4, p0, Lcom/unity3d/player/UnityWebRequest;->e:Z

    if-eqz v4, :cond_32

    new-instance v4, Lcom/unity3d/player/UnityWebRequest$2;

    invoke-direct {v4, p0}, Lcom/unity3d/player/UnityWebRequest$2;-><init>(Lcom/unity3d/player/UnityWebRequest;)V

    sget-object v5, Lcom/unity3d/player/UnityWebRequest;->k:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v2, v5}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_33

    :cond_32
    move-object v4, v3

    :goto_33
    invoke-static {v4}, Lcom/unity3d/player/b;->a(Lcom/unity3d/player/b$b;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    if-eqz v4, :cond_3c

    invoke-virtual {v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_3c
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_3c} :catch_280
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_3c} :catch_277

    :cond_3c
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v4, "file"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_58

    const-string v0, "file:// must use an absolute path"

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityWebRequest;->malformattedUrlCallback(Ljava/lang/String;)V

    return-void

    :cond_58
    instance-of v2, v1, Ljava/net/HttpURLConnection;

    const/4 v4, 0x0

    if-eqz v2, :cond_93

    :try_start_5d
    move-object v5, v1

    check-cast v5, Ljava/net/HttpURLConnection;

    iget-object v6, p0, Lcom/unity3d/player/UnityWebRequest;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-wide v6, p0, Lcom/unity3d/player/UnityWebRequest;->h:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_93

    iget-boolean v6, p0, Lcom/unity3d/player/UnityWebRequest;->j:Z

    if-eqz v6, :cond_78

    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_7e

    :cond_78
    iget-wide v6, p0, Lcom/unity3d/player/UnityWebRequest;->h:J

    long-to-int v7, v6

    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    :goto_7e
    iget-boolean v6, p0, Lcom/unity3d/player/UnityWebRequest;->i:Z

    if-eqz v6, :cond_93

    const-string v6, "Expect"

    const-string v7, "100-continue"

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/net/ProtocolException; {:try_start_5d .. :try_end_89} :catch_8a

    goto :goto_93

    :catch_8a
    move-exception v0

    invoke-virtual {v0}, Ljava/net/ProtocolException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityWebRequest;->badProtocolCallback(Ljava/lang/String;)V

    return-void

    :cond_93
    :goto_93
    iget-object v5, p0, Lcom/unity3d/player/UnityWebRequest;->d:Ljava/util/Map;

    if-eqz v5, :cond_bb

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_bb

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v7, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9f

    :cond_bb
    const/high16 v5, 0x20000

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/unity3d/player/UnityWebRequest;->uploadCallback(Ljava/nio/ByteBuffer;)I

    move-result v6

    const-string v7, "WebRequest timed out."

    const/16 v8, 0xe

    if-lez v6, :cond_fd

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/URLConnection;->setDoOutput(Z)V

    :try_start_cf
    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    :goto_d3
    invoke-virtual {p0, v5}, Lcom/unity3d/player/UnityWebRequest;->uploadCallback(Ljava/nio/ByteBuffer;)I

    move-result v9

    if-lez v9, :cond_fd

    invoke-direct {p0}, Lcom/unity3d/player/UnityWebRequest;->hasTimedOut()Z

    move-result v10

    if-eqz v10, :cond_e8

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    invoke-static {v0, v1, v8, v7}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(JILjava/lang/String;)V

    return-void

    :cond_e8
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v11

    invoke-virtual {v6, v10, v11, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_f3} :catch_f4

    goto :goto_d3

    :catch_f4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(Ljava/lang/String;)V

    return-void

    :cond_fd
    if-eqz v2, :cond_12c

    move-object v2, v1

    check-cast v2, Ljava/net/HttpURLConnection;

    :try_start_102
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/unity3d/player/UnityWebRequest;->responseCodeCallback(I)V
    :try_end_109
    .catch Ljava/net/UnknownHostException; {:try_start_102 .. :try_end_109} :catch_123
    .catch Ljavax/net/ssl/SSLException; {:try_start_102 .. :try_end_109} :catch_11e
    .catch Ljava/net/SocketTimeoutException; {:try_start_102 .. :try_end_109} :catch_113
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_109} :catch_10a

    goto :goto_12c

    :catch_10a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(Ljava/lang/String;)V

    return-void

    :catch_113
    move-exception v0

    iget-wide v1, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v8, v0}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(JILjava/lang/String;)V

    return-void

    :catch_11e
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityWebRequest;->sslCannotConnectCallback(Ljavax/net/ssl/SSLException;)V

    return-void

    :catch_123
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityWebRequest;->unknownHostCallback(Ljava/lang/String;)V

    return-void

    :cond_12c
    :goto_12c
    invoke-virtual {v1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/unity3d/player/UnityWebRequest;->headerCallback(Ljava/util/Map;)V

    const-string v6, "content-length"

    const/4 v9, -0x1

    if-eqz v2, :cond_13e

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_14f

    :cond_13e
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v10

    if-eq v10, v9, :cond_14f

    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v6, v10}, Lcom/unity3d/player/UnityWebRequest;->headerCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14f
    const-string v6, "content-type"

    if-eqz v2, :cond_159

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_166

    :cond_159
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_166

    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v6, v10}, Lcom/unity3d/player/UnityWebRequest;->headerCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_166
    if-eqz v2, :cond_202

    const-string v6, "Set-Cookie"

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_202

    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v10

    if-eqz v10, :cond_202

    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v10

    instance-of v10, v10, Ljava/net/CookieManager;

    if-eqz v10, :cond_202

    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v10

    check-cast v10, Ljava/net/CookieManager;

    invoke-virtual {v10}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v10

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_192
    :goto_192
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_202

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :try_start_19e
    invoke-static {v6}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/HttpCookie;

    invoke-virtual {v6}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_192

    invoke-virtual {v6}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_192

    invoke-virtual {v6}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1ce

    invoke-virtual {v6}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_192

    :cond_1ce
    new-instance v11, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v12, v13, v14, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    invoke-interface {v10, v11, v6}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    :try_end_1e9
    .catch Ljava/net/URISyntaxException; {:try_start_19e .. :try_end_1e9} :catch_1ea

    goto :goto_192

    :catch_1ea
    move-exception v6

    const/4 v11, 0x6

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "UnityWebRequest: error constructing URI: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    goto :goto_192

    :cond_202
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityWebRequest;->contentLengthCallback(I)V

    :try_start_209
    instance-of v0, v1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_21b

    move-object v0, v1

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/unity3d/player/UnityWebRequest;->responseCodeCallback(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    :cond_21b
    if-nez v3, :cond_221

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    :cond_221
    invoke-static {v3}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    :goto_225
    invoke-interface {v0, v5}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-eq v1, v9, :cond_244

    invoke-direct {p0}, Lcom/unity3d/player/UnityWebRequest;->hasTimedOut()Z

    move-result v2

    if-eqz v2, :cond_23a

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    invoke-static {v0, v1, v8, v7}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(JILjava/lang/String;)V

    return-void

    :cond_23a
    invoke-virtual {p0, v5, v1}, Lcom/unity3d/player/UnityWebRequest;->downloadCallback(Ljava/nio/ByteBuffer;I)Z

    move-result v1

    if-eqz v1, :cond_244

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_225

    :cond_244
    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_247
    .catch Ljava/net/UnknownHostException; {:try_start_209 .. :try_end_247} :catch_26e
    .catch Ljavax/net/ssl/SSLException; {:try_start_209 .. :try_end_247} :catch_269
    .catch Ljava/net/SocketTimeoutException; {:try_start_209 .. :try_end_247} :catch_25e
    .catch Ljava/io/IOException; {:try_start_209 .. :try_end_247} :catch_251
    .catch Ljava/lang/Exception; {:try_start_209 .. :try_end_247} :catch_248

    return-void

    :catch_248
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(Ljava/lang/String;)V

    return-void

    :catch_251
    move-exception v0

    iget-wide v1, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    const/16 v3, 0xc

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(JILjava/lang/String;)V

    return-void

    :catch_25e
    move-exception v0

    iget-wide v1, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v8, v0}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(JILjava/lang/String;)V

    return-void

    :catch_269
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityWebRequest;->sslCannotConnectCallback(Ljavax/net/ssl/SSLException;)V

    return-void

    :catch_26e
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityWebRequest;->unknownHostCallback(Ljava/lang/String;)V

    return-void

    :catch_277
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(Ljava/lang/String;)V

    return-void

    :catch_280
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityWebRequest;->malformattedUrlCallback(Ljava/lang/String;)V

    return-void
.end method

.method private static native uploadCallback(JLjava/nio/ByteBuffer;)I
.end method

.method private static native validateCertificateCallback(J[B)Z
.end method


# virtual methods
.method protected badProtocolCallback(Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    const/4 v2, 0x4

    invoke-static {v0, v1, v2, p1}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(JILjava/lang/String;)V

    return-void
.end method

.method protected contentLengthCallback(I)V
    .registers 4

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityWebRequest;->contentLengthCallback(JI)V

    return-void
.end method

.method protected downloadCallback(Ljava/nio/ByteBuffer;I)Z
    .registers 5

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/unity3d/player/UnityWebRequest;->downloadCallback(JLjava/nio/ByteBuffer;I)Z

    move-result p1

    return p1
.end method

.method protected errorCallback(Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, p1}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(JILjava/lang/String;)V

    return-void
.end method

.method protected headerCallback(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/unity3d/player/UnityWebRequest;->headerCallback(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected headerCallback(Ljava/util/Map;)V
    .registers 5

    if-eqz p1, :cond_41

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_41

    :cond_9
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_27

    const-string v1, "Status"

    :cond_27
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/unity3d/player/UnityWebRequest;->headerCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    :cond_41
    :goto_41
    return-void
.end method

.method protected malformattedUrlCallback(Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    const/4 v2, 0x5

    invoke-static {v0, v1, v2, p1}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(JILjava/lang/String;)V

    return-void
.end method

.method protected responseCodeCallback(I)V
    .registers 4

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityWebRequest;->responseCodeCallback(JI)V

    return-void
.end method

.method public run()V
    .registers 2

    :try_start_0
    invoke-direct {p0}, Lcom/unity3d/player/UnityWebRequest;->runSafe()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(Ljava/lang/String;)V

    return-void
.end method

.method setupTransferSettings(JZZ)V
    .registers 5

    iput-wide p1, p0, Lcom/unity3d/player/UnityWebRequest;->h:J

    iput-boolean p3, p0, Lcom/unity3d/player/UnityWebRequest;->i:Z

    iput-boolean p4, p0, Lcom/unity3d/player/UnityWebRequest;->j:Z

    return-void
.end method

.method protected sslCannotConnectCallback(Ljavax/net/ssl/SSLException;)V
    .registers 5

    invoke-virtual {p1}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    if-eqz p1, :cond_1e

    instance-of v1, p1, Ljavax/net/ssl/SSLKeyException;

    if-eqz v1, :cond_d

    const/16 p1, 0x17

    goto :goto_20

    :cond_d
    instance-of v1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v1, :cond_1b

    instance-of v1, p1, Ljava/security/cert/CertPathValidatorException;

    if-eqz v1, :cond_16

    goto :goto_1b

    :cond_16
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_4

    :cond_1b
    :goto_1b
    const/16 p1, 0x19

    goto :goto_20

    :cond_1e
    const/16 p1, 0x10

    :goto_20
    iget-wide v1, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    invoke-static {v1, v2, p1, v0}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(JILjava/lang/String;)V

    return-void
.end method

.method protected unknownHostCallback(Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    const/4 v2, 0x7

    invoke-static {v0, v1, v2, p1}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(JILjava/lang/String;)V

    return-void
.end method

.method protected uploadCallback(Ljava/nio/ByteBuffer;)I
    .registers 4

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityWebRequest;->uploadCallback(JLjava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method protected validateCertificateCallback([B)Z
    .registers 4

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityWebRequest;->validateCertificateCallback(J[B)Z

    move-result p1

    return p1
.end method
