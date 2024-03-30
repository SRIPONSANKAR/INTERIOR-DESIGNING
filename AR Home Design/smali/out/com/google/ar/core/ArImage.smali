.class public Lcom/google/ar/core/ArImage;
.super La/a/b;
.source "ArImage.java"


# instance fields
.field nativeHandle:J

.field private final nativeSymbolTableHandle:J

.field private final session:Lcom/google/ar/core/Session;


# direct methods
.method constructor <init>(Lcom/google/ar/core/Session;J)V
    .registers 4

    .line 1
    invoke-direct {p0}, La/a/b;-><init>()V

    iput-object p1, p0, Lcom/google/ar/core/ArImage;->session:Lcom/google/ar/core/Session;

    iput-wide p2, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    .line 2
    iget-wide p1, p1, Lcom/google/ar/core/Session;->nativeSymbolTableHandle:J

    iput-wide p1, p0, Lcom/google/ar/core/ArImage;->nativeSymbolTableHandle:J

    return-void
.end method

.method static synthetic access$000(Lcom/google/ar/core/ArImage;)Lcom/google/ar/core/Session;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/ar/core/ArImage;->session:Lcom/google/ar/core/Session;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/ar/core/ArImage;JJI)I
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/ar/core/ArImage;->nativeGetRowStride(JJI)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/google/ar/core/ArImage;JJI)I
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/ar/core/ArImage;->nativeGetPixelStride(JJI)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/google/ar/core/ArImage;JJI)Ljava/nio/ByteBuffer;
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/ar/core/ArImage;->nativeGetBuffer(JJI)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private native nativeClose(JJ)V
.end method

.method private native nativeGetBuffer(JJI)Ljava/nio/ByteBuffer;
.end method

.method private native nativeGetFormat(JJ)I
.end method

.method private native nativeGetHeight(JJ)I
.end method

.method private native nativeGetNumberOfPlanes(JJ)I
.end method

.method private native nativeGetPixelStride(JJI)I
.end method

.method private native nativeGetRowStride(JJI)I
.end method

.method private native nativeGetTimestamp(JJ)J
.end method

.method private native nativeGetWidth(JJ)I
.end method

.method static native nativeLoadSymbols()V
.end method


# virtual methods
.method public close()V
    .registers 5

    iget-wide v0, p0, Lcom/google/ar/core/ArImage;->nativeSymbolTableHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    .line 1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ArImage;->nativeClose(JJ)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    return-void
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Crop rect is unknown in this image."

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFormat()I
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/ArImage;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ArImage;->nativeGetFormat(JJ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    return v0

    :cond_e
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v1, "Unknown error in ArImage.getFormat()."

    .line 2
    invoke-direct {v0, v1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHeight()I
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/ArImage;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ArImage;->nativeGetHeight(JJ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    return v0

    :cond_e
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v1, "Unknown error in ArImage.getHeight()."

    .line 2
    invoke-direct {v0, v1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPlanes()[Landroid/media/Image$Plane;
    .registers 7

    iget-object v0, p0, Lcom/google/ar/core/ArImage;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ArImage;->nativeGetNumberOfPlanes(JJ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    .line 3
    new-array v1, v0, [Lcom/google/ar/core/l;

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_1e

    .line 4
    new-instance v3, Lcom/google/ar/core/l;

    iget-wide v4, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    invoke-direct {v3, p0, v4, v5, v2}, Lcom/google/ar/core/l;-><init>(Lcom/google/ar/core/ArImage;JI)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1e
    return-object v1

    .line 1
    :cond_1f
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v1, "Unknown error in ArImage.getPlanes()."

    .line 2
    invoke-direct {v0, v1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto :goto_28

    :goto_27
    throw v0

    :goto_28
    goto :goto_27
.end method

.method public getTimestamp()J
    .registers 6

    iget-object v0, p0, Lcom/google/ar/core/ArImage;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ArImage;->nativeGetTimestamp(JJ)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    return-wide v0

    :cond_11
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v1, "Unknown error in ArImage.getTimestamp()."

    .line 2
    invoke-direct {v0, v1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWidth()I
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/ArImage;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ArImage;->nativeGetWidth(JJ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    return v0

    :cond_e
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v1, "Unknown error in ArImage.getWidth()."

    .line 2
    invoke-direct {v0, v1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This is a read-only image."

    .line 1
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTimestamp(J)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This is a read-only image."

    .line 1
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
