.class public Lcom/google/ar/core/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ARCore-Camera"


# instance fields
.field nativeHandle:J

.field private final nativeSymbolTableHandle:J

.field private final session:Lcom/google/ar/core/Session;


# direct methods
.method protected constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    iput-wide v0, p0, Lcom/google/ar/core/Camera;->nativeSymbolTableHandle:J

    return-void
.end method

.method constructor <init>(Lcom/google/ar/core/Session;Lcom/google/ar/core/Frame;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p2, Lcom/google/ar/core/Frame;->nativeHandle:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/ar/core/Camera;->nativeAcquireCamera(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    .line 2
    iget-wide p1, p1, Lcom/google/ar/core/Session;->nativeSymbolTableHandle:J

    iput-wide p1, p0, Lcom/google/ar/core/Camera;->nativeSymbolTableHandle:J

    return-void
.end method

.method private static native nativeAcquireCamera(JJ)J
.end method

.method private native nativeCreateCameraIntrinsics(J)J
.end method

.method private native nativeDisplayOrientedPose(JJ)Lcom/google/ar/core/Pose;
.end method

.method private native nativeGetImageIntrinsics(JJJ)V
.end method

.method private native nativeGetPose(JJ)Lcom/google/ar/core/Pose;
.end method

.method private native nativeGetProjectionMatrix(JJ[FIFF)V
.end method

.method private native nativeGetTextureIntrinsics(JJJ)V
.end method

.method private native nativeGetTrackingFailureReason(JJ)I
.end method

.method private native nativeGetTrackingState(JJ)I
.end method

.method private native nativeGetViewMatrix(JJ[FI)V
.end method

.method private static native nativeReleaseCamera(JJ)V
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 1
    instance-of v0, p1, Lcom/google/ar/core/Camera;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    check-cast p1, Lcom/google/ar/core/Camera;

    .line 3
    iget-wide v2, p1, Lcom/google/ar/core/Camera;->nativeHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    return v1
.end method

.method protected finalize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    iget-wide v2, p0, Lcom/google/ar/core/Camera;->nativeSymbolTableHandle:J

    .line 1
    invoke-static {v2, v3, v0, v1}, Lcom/google/ar/core/Camera;->nativeReleaseCamera(JJ)V

    .line 2
    :cond_d
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getDisplayOrientedPose()Lcom/google/ar/core/Pose;
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Camera;->nativeDisplayOrientedPose(JJ)Lcom/google/ar/core/Pose;

    move-result-object v0

    return-object v0
.end method

.method public getImageIntrinsics()Lcom/google/ar/core/CameraIntrinsics;
    .registers 11

    iget-object v0, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    invoke-direct {p0, v0, v1}, Lcom/google/ar/core/Camera;->nativeCreateCameraIntrinsics(J)J

    move-result-wide v0

    new-instance v2, Lcom/google/ar/core/CameraIntrinsics;

    iget-object v3, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    .line 2
    invoke-direct {v2, v0, v1, v3}, Lcom/google/ar/core/CameraIntrinsics;-><init>(JLcom/google/ar/core/Session;)V

    iget-object v0, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    .line 3
    iget-wide v4, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v6, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    iget-wide v8, v2, Lcom/google/ar/core/CameraIntrinsics;->nativeHandle:J

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/google/ar/core/Camera;->nativeGetImageIntrinsics(JJJ)V

    return-object v2
.end method

.method public getPose()Lcom/google/ar/core/Pose;
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Camera;->nativeGetPose(JJ)Lcom/google/ar/core/Pose;

    move-result-object v0

    return-object v0
.end method

.method public getProjectionMatrix([FIFF)V
    .registers 15

    iget-object v0, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/google/ar/core/Camera;->nativeGetProjectionMatrix(JJ[FIFF)V

    return-void
.end method

.method public getTextureIntrinsics()Lcom/google/ar/core/CameraIntrinsics;
    .registers 11

    iget-object v0, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    invoke-direct {p0, v0, v1}, Lcom/google/ar/core/Camera;->nativeCreateCameraIntrinsics(J)J

    move-result-wide v0

    new-instance v2, Lcom/google/ar/core/CameraIntrinsics;

    iget-object v3, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    .line 2
    invoke-direct {v2, v0, v1, v3}, Lcom/google/ar/core/CameraIntrinsics;-><init>(JLcom/google/ar/core/Session;)V

    iget-object v0, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    .line 3
    iget-wide v4, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v6, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    iget-wide v8, v2, Lcom/google/ar/core/CameraIntrinsics;->nativeHandle:J

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/google/ar/core/Camera;->nativeGetTextureIntrinsics(JJJ)V

    return-object v2
.end method

.method public getTrackingFailureReason()Lcom/google/ar/core/TrackingFailureReason;
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    .line 2
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Camera;->nativeGetTrackingFailureReason(JJ)I

    move-result v0

    .line 1
    invoke-static {v0}, Lcom/google/ar/core/TrackingFailureReason;->forNumber(I)Lcom/google/ar/core/TrackingFailureReason;

    move-result-object v0

    return-object v0
.end method

.method public getTrackingState()Lcom/google/ar/core/TrackingState;
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    .line 2
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Camera;->nativeGetTrackingState(JJ)I

    move-result v0

    .line 1
    invoke-static {v0}, Lcom/google/ar/core/TrackingState;->forNumber(I)Lcom/google/ar/core/TrackingState;

    move-result-object v0

    return-object v0
.end method

.method public getViewMatrix([FI)V
    .registers 11

    iget-object v0, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/ar/core/Camera;->nativeGetViewMatrix(JJ[FI)V

    return-void
.end method

.method public hashCode()I
    .registers 3

    iget-wide v0, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method
