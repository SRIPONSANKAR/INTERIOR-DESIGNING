.class public Lcom/google/ar/core/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# static fields
.field static final ANCHORS_EMPTY_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/ar/core/Anchor;",
            ">;"
        }
    .end annotation
.end field

.field static final PLANES_EMPTY_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/ar/core/Plane;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ARCore-Frame"


# instance fields
.field private lightEstimate:Lcom/google/ar/core/LightEstimate;

.field nativeHandle:J

.field final nativeSymbolTableHandle:J

.field final session:Lcom/google/ar/core/Session;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/ar/core/Frame;->ANCHORS_EMPTY_LIST:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/ar/core/Frame;->PLANES_EMPTY_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    iput-wide v0, p0, Lcom/google/ar/core/Frame;->nativeSymbolTableHandle:J

    return-void
.end method

.method constructor <init>(Lcom/google/ar/core/Session;)V
    .registers 4

    .line 1
    iget-wide v0, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    invoke-static {v0, v1}, Lcom/google/ar/core/Frame;->nativeCreateFrame(J)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/ar/core/Frame;-><init>(Lcom/google/ar/core/Session;J)V

    return-void
.end method

.method constructor <init>(Lcom/google/ar/core/Session;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    iput-wide p2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    .line 2
    iget-wide p1, p1, Lcom/google/ar/core/Session;->nativeSymbolTableHandle:J

    iput-wide p1, p0, Lcom/google/ar/core/Frame;->nativeSymbolTableHandle:J

    return-void
.end method

.method private convertNativeHitResultsToList([J)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List<",
            "Lcom/google/ar/core/HitResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1e

    .line 2
    aget-wide v3, p1, v2

    new-instance v5, Lcom/google/ar/core/HitResult;

    iget-object v6, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 3
    invoke-direct {v5, v3, v4, v6}, Lcom/google/ar/core/HitResult;-><init>(JLcom/google/ar/core/Session;)V

    .line 4
    invoke-virtual {v5}, Lcom/google/ar/core/HitResult;->getTrackable()Lcom/google/ar/core/Trackable;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 5
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 6
    :cond_1e
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private native nativeAcquireCameraImage(JJ)J
.end method

.method private native nativeAcquireDepthImage(JJ)J
.end method

.method private native nativeAcquireImageMetadata(JJ)J
.end method

.method private native nativeAcquireRawDepthConfidenceImage(JJ)J
.end method

.method private native nativeAcquireRawDepthImage(JJ)J
.end method

.method private native nativeAcquireTrackData(JJ[B)[J
.end method

.method private native nativeAcquireUpdatedAnchors(JJ)[J
.end method

.method private static native nativeCreateFrame(J)J
.end method

.method private static native nativeDestroyFrame(JJ)V
.end method

.method private native nativeGetAndroidCameraTimestamp(JJ)J
.end method

.method private native nativeGetAndroidSensorPose(JJ)Lcom/google/ar/core/Pose;
.end method

.method private native nativeGetCameraTextureName(JJ)I
.end method

.method private native nativeGetLightEstimate(JJJ)V
.end method

.method private native nativeGetTimestamp(JJ)J
.end method

.method private native nativeHasDisplayGeometryChanged(JJ)Z
.end method

.method private native nativeRecordTrackData(JJ[B[B)V
.end method

.method private native nativeTransformCoordinates2dFloatArrayOrBuffer(JJILjava/lang/Object;ILjava/lang/Object;)V
.end method

.method private native nativeTransformDisplayUvCoords(JJLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
.end method


# virtual methods
.method public acquireCameraImage()Landroid/media/Image;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ar/core/exceptions/NotYetAvailableException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeAcquireCameraImage(JJ)J

    move-result-wide v0

    .line 2
    new-instance v2, Lcom/google/ar/core/ArImage;

    iget-object v3, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/ar/core/ArImage;-><init>(Lcom/google/ar/core/Session;J)V

    return-object v2
.end method

.method public acquireDepthImage()Landroid/media/Image;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ar/core/exceptions/NotYetAvailableException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeAcquireDepthImage(JJ)J

    move-result-wide v0

    .line 2
    new-instance v2, Lcom/google/ar/core/ArImage;

    iget-object v3, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/ar/core/ArImage;-><init>(Lcom/google/ar/core/Session;J)V

    return-object v2
.end method

.method public acquirePointCloud()Lcom/google/ar/core/PointCloud;
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    .line 2
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeAcquirePointCloud(JJ)J

    move-result-wide v0

    new-instance v2, Lcom/google/ar/core/PointCloud;

    iget-object v3, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 3
    invoke-direct {v2, v3, v0, v1}, Lcom/google/ar/core/PointCloud;-><init>(Lcom/google/ar/core/Session;J)V

    return-object v2
.end method

.method public acquireRawDepthConfidenceImage()Landroid/media/Image;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ar/core/exceptions/NotYetAvailableException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    .line 2
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeAcquireRawDepthConfidenceImage(JJ)J

    move-result-wide v0

    .line 3
    new-instance v2, Lcom/google/ar/core/ArImage;

    iget-object v3, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/ar/core/ArImage;-><init>(Lcom/google/ar/core/Session;J)V

    return-object v2
.end method

.method public acquireRawDepthImage()Landroid/media/Image;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ar/core/exceptions/NotYetAvailableException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeAcquireRawDepthImage(JJ)J

    move-result-wide v0

    .line 2
    new-instance v2, Lcom/google/ar/core/ArImage;

    iget-object v3, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/ar/core/ArImage;-><init>(Lcom/google/ar/core/Session;J)V

    return-object v2
.end method

.method protected finalize()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeSymbolTableHandle:J

    .line 1
    invoke-static {v4, v5, v0, v1}, Lcom/google/ar/core/Frame;->nativeDestroyFrame(JJ)V

    iput-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    .line 2
    :cond_f
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAndroidCameraTimestamp()J
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeGetAndroidCameraTimestamp(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAndroidSensorPose()Lcom/google/ar/core/Pose;
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeGetAndroidSensorPose(JJ)Lcom/google/ar/core/Pose;

    move-result-object v0

    return-object v0
.end method

.method public getCamera()Lcom/google/ar/core/Camera;
    .registers 3

    new-instance v0, Lcom/google/ar/core/Camera;

    iget-object v1, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 1
    invoke-direct {v0, v1, p0}, Lcom/google/ar/core/Camera;-><init>(Lcom/google/ar/core/Session;Lcom/google/ar/core/Frame;)V

    return-object v0
.end method

.method public getCameraTextureName()I
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeGetCameraTextureName(JJ)I

    move-result v0

    return v0
.end method

.method public getImageMetadata()Lcom/google/ar/core/ImageMetadata;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ar/core/exceptions/NotYetAvailableException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    .line 2
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeAcquireImageMetadata(JJ)J

    move-result-wide v0

    new-instance v2, Lcom/google/ar/core/ImageMetadata;

    iget-object v3, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 3
    invoke-direct {v2, v0, v1, v3}, Lcom/google/ar/core/ImageMetadata;-><init>(JLcom/google/ar/core/Session;)V

    return-object v2
.end method

.method public getLightEstimate()Lcom/google/ar/core/LightEstimate;
    .registers 9

    iget-object v0, p0, Lcom/google/ar/core/Frame;->lightEstimate:Lcom/google/ar/core/LightEstimate;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/ar/core/LightEstimate;

    iget-object v1, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 1
    invoke-direct {v0, v1}, Lcom/google/ar/core/LightEstimate;-><init>(Lcom/google/ar/core/Session;)V

    iput-object v0, p0, Lcom/google/ar/core/Frame;->lightEstimate:Lcom/google/ar/core/LightEstimate;

    :cond_d
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 2
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    iget-object v0, p0, Lcom/google/ar/core/Frame;->lightEstimate:Lcom/google/ar/core/LightEstimate;

    iget-wide v6, v0, Lcom/google/ar/core/LightEstimate;->nativeHandle:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/ar/core/Frame;->nativeGetLightEstimate(JJJ)V

    iget-object v0, p0, Lcom/google/ar/core/Frame;->lightEstimate:Lcom/google/ar/core/LightEstimate;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeGetTimestamp(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUpdatedAnchors()Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/ar/core/Anchor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v1, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v3, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    .line 2
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/ar/core/Frame;->nativeAcquireUpdatedAnchors(JJ)[J

    move-result-object v1

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/ar/core/Session;->convertNativeAnchorsToCollection([J)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getUpdatedTrackData(Ljava/util/UUID;)Ljava/util/Collection;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/google/ar/core/TrackData;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 4
    iget-wide v2, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/Frame;->nativeAcquireTrackData(JJ[B)[J

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/ar/core/Session;->convertNativeTrackDataToCollection([J)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getUpdatedTrackables(Ljava/lang/Class;)Ljava/util/Collection;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/ar/core/Trackable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/ar/core/ag;->a(Ljava/lang/Class;)Lcom/google/ar/core/ag;

    move-result-object v0

    sget-object v1, Lcom/google/ar/core/ag;->b:Lcom/google/ar/core/ag;

    if-ne v0, v1, :cond_d

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_d
    iget-object v1, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 3
    iget-wide v3, v1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v5, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    iget v7, v0, Lcom/google/ar/core/ag;->i:I

    move-object v2, p0

    .line 4
    invoke-virtual/range {v2 .. v7}, Lcom/google/ar/core/Frame;->nativeAcquireUpdatedTrackables(JJI)[J

    move-result-object v0

    iget-object v1, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 5
    invoke-virtual {v1, p1, v0}, Lcom/google/ar/core/Session;->convertNativeTrackablesToCollection(Ljava/lang/Class;[J)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public hasDisplayGeometryChanged()Z
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeHasDisplayGeometryChanged(JJ)Z

    move-result v0

    return v0
.end method

.method public hitTest(FF)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Ljava/util/List<",
            "Lcom/google/ar/core/HitResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    move-object v1, p0

    move v6, p1

    move v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/ar/core/Frame;->nativeHitTest(JJFF)[J

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/ar/core/Frame;->convertNativeHitResultsToList([J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hitTest(Landroid/view/MotionEvent;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/ar/core/HitResult;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/ar/core/Frame;->hitTest(FF)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hitTest([FI[FI)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FI[FI)",
            "Ljava/util/List<",
            "Lcom/google/ar/core/HitResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 4
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    move v9, p4

    .line 5
    invoke-virtual/range {v1 .. v9}, Lcom/google/ar/core/Frame;->nativeHitTestRay(JJ[FI[FI)[J

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lcom/google/ar/core/Frame;->convertNativeHitResultsToList([J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hitTestInstantPlacement(FFF)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)",
            "Ljava/util/List<",
            "Lcom/google/ar/core/HitResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    move-object v1, p0

    move v6, p1

    move v7, p2

    move v8, p3

    .line 2
    invoke-virtual/range {v1 .. v8}, Lcom/google/ar/core/Frame;->nativeHitTestInstantPlacement(JJFFF)[J

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/ar/core/Frame;->convertNativeHitResultsToList([J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method native nativeAcquirePointCloud(JJ)J
.end method

.method native nativeAcquireUpdatedTrackables(JJI)[J
.end method

.method native nativeHitTest(JJFF)[J
.end method

.method native nativeHitTestInstantPlacement(JJFFF)[J
.end method

.method native nativeHitTestRay(JJ[FI[FI)[J
.end method

.method public recordTrackData(Ljava/util/UUID;Ljava/nio/ByteBuffer;)V
    .registers 11

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result p1

    if-eqz p1, :cond_35

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    if-nez p1, :cond_35

    iget-object p1, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 9
    iget-wide v2, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    .line 10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    move-object v1, p0

    .line 9
    invoke-direct/range {v1 .. v7}, Lcom/google/ar/core/Frame;->nativeRecordTrackData(JJ[B[B)V

    return-void

    .line 5
    :cond_35
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    new-array v7, p1, [B

    .line 6
    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 7
    iget-wide v2, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    .line 8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    move-object v1, p0

    .line 7
    invoke-direct/range {v1 .. v7}, Lcom/google/ar/core/Frame;->nativeRecordTrackData(JJ[B[B)V

    return-void
.end method

.method public transformCoordinates2d(Lcom/google/ar/core/Coordinates2d;Ljava/nio/FloatBuffer;Lcom/google/ar/core/Coordinates2d;Ljava/nio/FloatBuffer;)V
    .registers 15

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    iget v6, p1, Lcom/google/ar/core/Coordinates2d;->nativeCode:I

    iget v8, p3, Lcom/google/ar/core/Coordinates2d;->nativeCode:I

    move-object v1, p0

    move-object v7, p2

    move-object v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/google/ar/core/Frame;->nativeTransformCoordinates2dFloatArrayOrBuffer(JJILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public transformCoordinates2d(Lcom/google/ar/core/Coordinates2d;[FLcom/google/ar/core/Coordinates2d;[F)V
    .registers 15

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 2
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    iget v6, p1, Lcom/google/ar/core/Coordinates2d;->nativeCode:I

    iget v8, p3, Lcom/google/ar/core/Coordinates2d;->nativeCode:I

    move-object v1, p0

    move-object v7, p2

    move-object v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/google/ar/core/Frame;->nativeTransformCoordinates2dFloatArrayOrBuffer(JJILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public transformDisplayUvCoords(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    .line 3
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/ar/core/Frame;->nativeTransformDisplayUvCoords(JJLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    return-void

    .line 1
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "transformDisplayUvCoords currently requires direct buffers."

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
