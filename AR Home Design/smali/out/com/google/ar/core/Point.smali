.class public Lcom/google/ar/core/Point;
.super Lcom/google/ar/core/TrackableBase;
.source "Point.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ar/core/Point$OrientationMode;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 4

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/google/ar/core/TrackableBase;-><init>(JLcom/google/ar/core/Session;)V

    return-void
.end method

.method constructor <init>(JLcom/google/ar/core/Session;)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ar/core/TrackableBase;-><init>(JLcom/google/ar/core/Session;)V

    return-void
.end method

.method private native nativeGetOrientationMode(JJ)I
.end method

.method private native nativeGetPose(JJ)Lcom/google/ar/core/Pose;
.end method


# virtual methods
.method public bridge synthetic createAnchor(Lcom/google/ar/core/Pose;)Lcom/google/ar/core/Anchor;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/ar/core/TrackableBase;->createAnchor(Lcom/google/ar/core/Pose;)Lcom/google/ar/core/Anchor;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/ar/core/TrackableBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getAnchors()Ljava/util/Collection;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/ar/core/TrackableBase;->getAnchors()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getOrientationMode()Lcom/google/ar/core/Point$OrientationMode;
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/Point;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Point;->nativeHandle:J

    .line 2
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Point;->nativeGetOrientationMode(JJ)I

    move-result v0

    .line 1
    invoke-static {v0}, Lcom/google/ar/core/Point$OrientationMode;->fromNumber(I)Lcom/google/ar/core/Point$OrientationMode;

    move-result-object v0

    return-object v0
.end method

.method public getPose()Lcom/google/ar/core/Pose;
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/Point;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Point;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Point;->nativeGetPose(JJ)Lcom/google/ar/core/Pose;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTrackingState()Lcom/google/ar/core/TrackingState;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/ar/core/TrackableBase;->getTrackingState()Lcom/google/ar/core/TrackingState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/ar/core/TrackableBase;->hashCode()I

    move-result v0

    return v0
.end method
