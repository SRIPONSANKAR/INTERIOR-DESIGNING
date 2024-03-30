.class public Lcom/unity3d/unitygar/GoogleAR;
.super Ljava/lang/Object;
.source "GoogleAR.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final native tangoCacheTangoObject(Lcom/google/atap/tangoservice/Tango;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tango"
        }
    .end annotation
.end method

.method private final native tangoOnCreate(Landroid/app/Activity;Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "caller_activity",
            "callback"
        }
    .end annotation
.end method

.method private final native tangoOnImageAvailable(Lcom/google/atap/tangoservice/TangoImage;Lcom/google/atap/tangoservice/TangoCameraMetadata;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "image",
            "metadata",
            "cameraId"
        }
    .end annotation
.end method

.method private final native tangoOnPause()V
.end method

.method private final native tangoOnPointCloudAvailable(Lcom/google/atap/tangoservice/TangoPointCloudData;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointCloud"
        }
    .end annotation
.end method

.method private final native tangoOnPoseAvailable(Lcom/google/atap/tangoservice/TangoPoseData;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pose"
        }
    .end annotation
.end method

.method private final native tangoOnTangoEvent(Lcom/google/atap/tangoservice/TangoEvent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation
.end method

.method private final native tangoOnTextureAvailable(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation
.end method


# virtual methods
.method public getClassVersion()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
