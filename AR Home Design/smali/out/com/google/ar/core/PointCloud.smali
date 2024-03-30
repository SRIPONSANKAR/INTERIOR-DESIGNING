.class public Lcom/google/ar/core/PointCloud;
.super Ljava/lang/Object;
.source "PointCloud.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private nativeHandle:J

.field private final nativeSymbolTableHandle:J

.field private final session:Lcom/google/ar/core/Session;


# direct methods
.method protected constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ar/core/PointCloud;->nativeHandle:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/ar/core/PointCloud;->session:Lcom/google/ar/core/Session;

    iput-wide v0, p0, Lcom/google/ar/core/PointCloud;->nativeSymbolTableHandle:J

    return-void
.end method

.method constructor <init>(Lcom/google/ar/core/Session;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ar/core/PointCloud;->session:Lcom/google/ar/core/Session;

    iput-wide p2, p0, Lcom/google/ar/core/PointCloud;->nativeHandle:J

    .line 1
    iget-wide p1, p1, Lcom/google/ar/core/Session;->nativeSymbolTableHandle:J

    iput-wide p1, p0, Lcom/google/ar/core/PointCloud;->nativeSymbolTableHandle:J

    return-void
.end method

.method private native nativeGetData(JJ)Ljava/nio/ByteBuffer;
.end method

.method private native nativeGetIds(JJ)Ljava/nio/ByteBuffer;
.end method

.method private native nativeGetTimestamp(JJ)J
.end method

.method private native nativeReleasePointCloud(JJ)V
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ar/core/PointCloud;->release()V

    return-void
.end method

.method protected finalize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/ar/core/PointCloud;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    iget-wide v2, p0, Lcom/google/ar/core/PointCloud;->nativeSymbolTableHandle:J

    .line 1
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/ar/core/PointCloud;->nativeReleasePointCloud(JJ)V

    .line 2
    :cond_d
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getIds()Ljava/nio/IntBuffer;
    .registers 6

    iget-wide v0, p0, Lcom/google/ar/core/PointCloud;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_19

    .line 1
    iget-object v2, p0, Lcom/google/ar/core/PointCloud;->session:Lcom/google/ar/core/Session;

    .line 2
    iget-wide v2, v2, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    .line 3
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/ar/core/PointCloud;->nativeGetIds(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/ar/core/Session;->directByteBufferOrDefault(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0

    .line 0
    :cond_19
    new-instance v0, Lcom/google/ar/core/exceptions/DeadlineExceededException;

    .line 1
    invoke-direct {v0}, Lcom/google/ar/core/exceptions/DeadlineExceededException;-><init>()V

    throw v0
.end method

.method public getPoints()Ljava/nio/FloatBuffer;
    .registers 6

    iget-wide v0, p0, Lcom/google/ar/core/PointCloud;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_19

    .line 1
    iget-object v2, p0, Lcom/google/ar/core/PointCloud;->session:Lcom/google/ar/core/Session;

    .line 2
    iget-wide v2, v2, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    .line 3
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/ar/core/PointCloud;->nativeGetData(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/ar/core/Session;->directByteBufferOrDefault(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0

    .line 0
    :cond_19
    new-instance v0, Lcom/google/ar/core/exceptions/DeadlineExceededException;

    .line 1
    invoke-direct {v0}, Lcom/google/ar/core/exceptions/DeadlineExceededException;-><init>()V

    throw v0
.end method

.method public getTimestamp()J
    .registers 6

    iget-wide v0, p0, Lcom/google/ar/core/PointCloud;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    .line 1
    iget-object v2, p0, Lcom/google/ar/core/PointCloud;->session:Lcom/google/ar/core/Session;

    .line 2
    iget-wide v2, v2, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/ar/core/PointCloud;->nativeGetTimestamp(JJ)J

    move-result-wide v0

    return-wide v0

    .line 0
    :cond_11
    new-instance v0, Lcom/google/ar/core/exceptions/DeadlineExceededException;

    .line 1
    invoke-direct {v0}, Lcom/google/ar/core/exceptions/DeadlineExceededException;-><init>()V

    throw v0
.end method

.method public release()V
    .registers 5

    iget-wide v0, p0, Lcom/google/ar/core/PointCloud;->nativeSymbolTableHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/PointCloud;->nativeHandle:J

    .line 1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/PointCloud;->nativeReleasePointCloud(JJ)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ar/core/PointCloud;->nativeHandle:J

    return-void
.end method
