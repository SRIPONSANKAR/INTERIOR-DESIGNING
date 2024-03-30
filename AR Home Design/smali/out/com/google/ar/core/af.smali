.class final enum Lcom/google/ar/core/af;
.super Ljava/lang/Enum;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ar/core/af;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/google/ar/core/af;

.field public static final enum B:Lcom/google/ar/core/af;

.field public static final enum C:Lcom/google/ar/core/af;

.field public static final enum D:Lcom/google/ar/core/af;

.field private static final synthetic H:[Lcom/google/ar/core/af;

.field public static final enum a:Lcom/google/ar/core/af;

.field public static final enum b:Lcom/google/ar/core/af;

.field public static final enum c:Lcom/google/ar/core/af;

.field public static final enum d:Lcom/google/ar/core/af;

.field public static final enum e:Lcom/google/ar/core/af;

.field public static final enum f:Lcom/google/ar/core/af;

.field public static final enum g:Lcom/google/ar/core/af;

.field public static final enum h:Lcom/google/ar/core/af;

.field public static final enum i:Lcom/google/ar/core/af;

.field public static final enum j:Lcom/google/ar/core/af;

.field public static final enum k:Lcom/google/ar/core/af;

.field public static final enum l:Lcom/google/ar/core/af;

.field public static final enum m:Lcom/google/ar/core/af;

.field public static final enum n:Lcom/google/ar/core/af;

.field public static final enum o:Lcom/google/ar/core/af;

.field public static final enum p:Lcom/google/ar/core/af;

.field public static final enum q:Lcom/google/ar/core/af;

.field public static final enum r:Lcom/google/ar/core/af;

.field public static final enum s:Lcom/google/ar/core/af;

.field public static final enum t:Lcom/google/ar/core/af;

.field public static final enum u:Lcom/google/ar/core/af;

.field public static final enum v:Lcom/google/ar/core/af;

.field public static final enum w:Lcom/google/ar/core/af;

.field public static final enum x:Lcom/google/ar/core/af;

.field public static final enum y:Lcom/google/ar/core/af;

.field public static final enum z:Lcom/google/ar/core/af;


# instance fields
.field final E:I

.field final F:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field final G:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 25

    new-instance v0, Lcom/google/ar/core/af;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    const/4 v3, 0x0

    .line 1
    invoke-direct {v0, v2, v1, v1, v3}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->a:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x1

    const-string v4, "ERROR_INVALID_ARGUMENT"

    const/4 v5, -0x1

    .line 2
    invoke-direct {v0, v4, v3, v5, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->b:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v2, Lcom/google/ar/core/exceptions/FatalException;

    const/4 v4, 0x2

    const-string v5, "ERROR_FATAL"

    const/4 v6, -0x2

    .line 3
    invoke-direct {v0, v5, v4, v6, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->c:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v2, Lcom/google/ar/core/exceptions/SessionPausedException;

    const/4 v5, 0x3

    const-string v6, "ERROR_SESSION_PAUSED"

    const/4 v7, -0x3

    .line 4
    invoke-direct {v0, v6, v5, v7, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->d:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v2, Lcom/google/ar/core/exceptions/SessionNotPausedException;

    const/4 v6, 0x4

    const-string v7, "ERROR_SESSION_NOT_PAUSED"

    const/4 v8, -0x4

    .line 5
    invoke-direct {v0, v7, v6, v8, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->e:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v2, Lcom/google/ar/core/exceptions/NotTrackingException;

    const/4 v7, 0x5

    const-string v8, "ERROR_NOT_TRACKING"

    const/4 v9, -0x5

    .line 6
    invoke-direct {v0, v8, v7, v9, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->f:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v2, Lcom/google/ar/core/exceptions/TextureNotSetException;

    const/4 v8, 0x6

    const-string v9, "ERROR_TEXTURE_NOT_SET"

    const/4 v10, -0x6

    .line 7
    invoke-direct {v0, v9, v8, v10, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->g:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v2, Lcom/google/ar/core/exceptions/MissingGlContextException;

    const/4 v9, 0x7

    const-string v10, "ERROR_MISSING_GL_CONTEXT"

    const/4 v11, -0x7

    .line 8
    invoke-direct {v0, v10, v9, v11, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->h:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    .line 9
    const-class v2, Lcom/google/ar/core/exceptions/UnsupportedConfigurationException;

    const/16 v10, 0x8

    const-string v11, "ERROR_UNSUPPORTED_CONFIGURATION"

    const/4 v12, -0x8

    invoke-direct {v0, v11, v10, v12, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->i:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v17, Ljava/lang/SecurityException;

    const-string v14, "ERROR_CAMERA_PERMISSION_NOT_GRANTED"

    const/16 v15, 0x9

    const/16 v16, -0x9

    const-string v18, "Camera permission is not granted"

    move-object v13, v0

    .line 10
    invoke-direct/range {v13 .. v18}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/ar/core/af;->j:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v2, Lcom/google/ar/core/exceptions/DeadlineExceededException;

    const/16 v11, 0xa

    const-string v12, "ERROR_DEADLINE_EXCEEDED"

    const/16 v13, -0xa

    .line 11
    invoke-direct {v0, v12, v11, v13, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->k:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v2, Lcom/google/ar/core/exceptions/ResourceExhaustedException;

    const/16 v12, 0xb

    const-string v13, "ERROR_RESOURCE_EXHAUSTED"

    const/16 v14, -0xb

    .line 12
    invoke-direct {v0, v13, v12, v14, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->l:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v2, Lcom/google/ar/core/exceptions/NotYetAvailableException;

    const/16 v13, 0xc

    const-string v14, "ERROR_NOT_YET_AVAILABLE"

    const/16 v15, -0xc

    .line 13
    invoke-direct {v0, v14, v13, v15, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->m:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v2, Lcom/google/ar/core/exceptions/CameraNotAvailableException;

    const/16 v14, 0xd

    const-string v15, "ERROR_CAMERA_NOT_AVAILABLE"

    const/16 v13, -0xd

    .line 14
    invoke-direct {v0, v15, v14, v13, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->n:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v2, Lcom/google/ar/core/exceptions/AnchorNotSupportedForHostingException;

    const/16 v13, 0xe

    const-string v15, "ERROR_ANCHOR_NOT_SUPPORTED_FOR_HOSTING"

    const/16 v14, -0x10

    .line 15
    invoke-direct {v0, v15, v13, v14, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->o:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v2, Lcom/google/ar/core/exceptions/ImageInsufficientQualityException;

    const/16 v14, 0xf

    const-string v15, "ERROR_IMAGE_INSUFFICIENT_QUALITY"

    const/16 v13, -0x11

    .line 16
    invoke-direct {v0, v15, v14, v13, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->p:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v2, Lcom/google/ar/core/exceptions/DataInvalidFormatException;

    const/16 v13, 0x10

    const-string v15, "ERROR_DATA_INVALID_FORMAT"

    const/16 v14, -0x12

    .line 17
    invoke-direct {v0, v15, v13, v14, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->q:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v2, Lcom/google/ar/core/exceptions/DataUnsupportedVersionException;

    const/16 v14, 0x11

    const-string v15, "ERROR_DATA_UNSUPPORTED_VERSION"

    const/16 v13, -0x13

    .line 18
    invoke-direct {v0, v15, v14, v13, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->r:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v2, Ljava/lang/IllegalStateException;

    const/16 v13, 0x12

    const-string v15, "ERROR_ILLEGAL_STATE"

    const/16 v14, -0x14

    .line 19
    invoke-direct {v0, v15, v13, v14, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->s:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v2, Lcom/google/ar/core/exceptions/RecordingFailedException;

    const/16 v14, 0x13

    const-string v15, "ERROR_RECORDING_FAILED"

    const/16 v13, -0x17

    .line 20
    invoke-direct {v0, v15, v14, v13, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->t:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v2, Lcom/google/ar/core/exceptions/PlaybackFailedException;

    const/16 v13, 0x14

    const-string v15, "ERROR_PLAYBACK_FAILED"

    const/16 v14, -0x18

    .line 21
    invoke-direct {v0, v15, v13, v14, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->u:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v2, Lcom/google/ar/core/exceptions/SessionUnsupportedException;

    const/16 v14, 0x15

    const-string v15, "ERROR_SESSION_UNSUPPORTED"

    const/16 v13, -0x19

    .line 22
    invoke-direct {v0, v15, v14, v13, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->v:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v2, Lcom/google/ar/core/exceptions/MetadataNotFoundException;

    const/16 v13, 0x16

    const-string v15, "ERROR_METADATA_NOT_FOUND"

    const/16 v14, -0x1a

    .line 23
    invoke-direct {v0, v15, v13, v14, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->w:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v2, Lcom/google/ar/core/exceptions/CloudAnchorsNotConfiguredException;

    const-string v14, "ERROR_CLOUD_ANCHORS_NOT_CONFIGURED"

    const/16 v15, 0x17

    const/16 v13, -0xe

    .line 24
    invoke-direct {v0, v14, v15, v13, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->x:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v23, Ljava/lang/SecurityException;

    const-string v20, "ERROR_INTERNET_PERMISSION_NOT_GRANTED"

    const/16 v21, 0x18

    const/16 v22, -0xf

    const-string v24, "Internet permission is not granted"

    move-object/from16 v19, v0

    .line 25
    invoke-direct/range {v19 .. v24}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/ar/core/af;->y:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v2, Lcom/google/ar/core/exceptions/UnavailableArcoreNotInstalledException;

    const-string v13, "UNAVAILABLE_ARCORE_NOT_INSTALLED"

    const/16 v14, 0x19

    const/16 v15, -0x64

    .line 26
    invoke-direct {v0, v13, v14, v15, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->z:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v2, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;

    const-string v13, "UNAVAILABLE_DEVICE_NOT_COMPATIBLE"

    const/16 v14, 0x1a

    const/16 v15, -0x65

    .line 27
    invoke-direct {v0, v13, v14, v15, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->A:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v2, Lcom/google/ar/core/exceptions/UnavailableApkTooOldException;

    const-string v13, "UNAVAILABLE_APK_TOO_OLD"

    const/16 v14, 0x1b

    const/16 v15, -0x67

    .line 28
    invoke-direct {v0, v13, v14, v15, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->B:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    .line 29
    const-class v2, Lcom/google/ar/core/exceptions/UnavailableSdkTooOldException;

    const-string v13, "UNAVAILABLE_SDK_TOO_OLD"

    const/16 v14, 0x1c

    const/16 v15, -0x68

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->C:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    const-class v2, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

    const-string v13, "UNAVAILABLE_USER_DECLINED_INSTALLATION"

    const/16 v14, 0x1d

    const/16 v15, -0x69

    .line 30
    invoke-direct {v0, v13, v14, v15, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->D:Lcom/google/ar/core/af;

    const/16 v2, 0x1e

    new-array v2, v2, [Lcom/google/ar/core/af;

    sget-object v13, Lcom/google/ar/core/af;->a:Lcom/google/ar/core/af;

    aput-object v13, v2, v1

    sget-object v1, Lcom/google/ar/core/af;->b:Lcom/google/ar/core/af;

    aput-object v1, v2, v3

    sget-object v1, Lcom/google/ar/core/af;->c:Lcom/google/ar/core/af;

    aput-object v1, v2, v4

    sget-object v1, Lcom/google/ar/core/af;->d:Lcom/google/ar/core/af;

    aput-object v1, v2, v5

    sget-object v1, Lcom/google/ar/core/af;->e:Lcom/google/ar/core/af;

    aput-object v1, v2, v6

    sget-object v1, Lcom/google/ar/core/af;->f:Lcom/google/ar/core/af;

    aput-object v1, v2, v7

    sget-object v1, Lcom/google/ar/core/af;->g:Lcom/google/ar/core/af;

    aput-object v1, v2, v8

    sget-object v1, Lcom/google/ar/core/af;->h:Lcom/google/ar/core/af;

    aput-object v1, v2, v9

    sget-object v1, Lcom/google/ar/core/af;->i:Lcom/google/ar/core/af;

    aput-object v1, v2, v10

    sget-object v1, Lcom/google/ar/core/af;->j:Lcom/google/ar/core/af;

    const/16 v3, 0x9

    aput-object v1, v2, v3

    sget-object v1, Lcom/google/ar/core/af;->k:Lcom/google/ar/core/af;

    aput-object v1, v2, v11

    sget-object v1, Lcom/google/ar/core/af;->l:Lcom/google/ar/core/af;

    aput-object v1, v2, v12

    sget-object v1, Lcom/google/ar/core/af;->m:Lcom/google/ar/core/af;

    const/16 v3, 0xc

    aput-object v1, v2, v3

    sget-object v1, Lcom/google/ar/core/af;->n:Lcom/google/ar/core/af;

    const/16 v3, 0xd

    aput-object v1, v2, v3

    sget-object v1, Lcom/google/ar/core/af;->o:Lcom/google/ar/core/af;

    const/16 v3, 0xe

    aput-object v1, v2, v3

    sget-object v1, Lcom/google/ar/core/af;->p:Lcom/google/ar/core/af;

    const/16 v3, 0xf

    aput-object v1, v2, v3

    sget-object v1, Lcom/google/ar/core/af;->q:Lcom/google/ar/core/af;

    const/16 v3, 0x10

    aput-object v1, v2, v3

    sget-object v1, Lcom/google/ar/core/af;->r:Lcom/google/ar/core/af;

    const/16 v3, 0x11

    aput-object v1, v2, v3

    sget-object v1, Lcom/google/ar/core/af;->s:Lcom/google/ar/core/af;

    const/16 v3, 0x12

    aput-object v1, v2, v3

    sget-object v1, Lcom/google/ar/core/af;->t:Lcom/google/ar/core/af;

    const/16 v3, 0x13

    aput-object v1, v2, v3

    sget-object v1, Lcom/google/ar/core/af;->u:Lcom/google/ar/core/af;

    const/16 v3, 0x14

    aput-object v1, v2, v3

    sget-object v1, Lcom/google/ar/core/af;->v:Lcom/google/ar/core/af;

    const/16 v3, 0x15

    aput-object v1, v2, v3

    sget-object v1, Lcom/google/ar/core/af;->w:Lcom/google/ar/core/af;

    const/16 v3, 0x16

    aput-object v1, v2, v3

    sget-object v1, Lcom/google/ar/core/af;->x:Lcom/google/ar/core/af;

    const/16 v3, 0x17

    aput-object v1, v2, v3

    sget-object v1, Lcom/google/ar/core/af;->y:Lcom/google/ar/core/af;

    const/16 v3, 0x18

    aput-object v1, v2, v3

    sget-object v1, Lcom/google/ar/core/af;->z:Lcom/google/ar/core/af;

    const/16 v3, 0x19

    aput-object v1, v2, v3

    sget-object v1, Lcom/google/ar/core/af;->A:Lcom/google/ar/core/af;

    const/16 v3, 0x1a

    aput-object v1, v2, v3

    sget-object v1, Lcom/google/ar/core/af;->B:Lcom/google/ar/core/af;

    const/16 v3, 0x1b

    aput-object v1, v2, v3

    sget-object v1, Lcom/google/ar/core/af;->C:Lcom/google/ar/core/af;

    const/16 v3, 0x1c

    aput-object v1, v2, v3

    const/16 v1, 0x1d

    aput-object v0, v2, v1

    sput-object v2, Lcom/google/ar/core/af;->H:[Lcom/google/ar/core/af;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Exception;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/ar/core/af;->E:I

    iput-object p4, p0, Lcom/google/ar/core/af;->F:Ljava/lang/Class;

    iput-object p5, p0, Lcom/google/ar/core/af;->G:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/ar/core/af;
    .registers 1

    sget-object v0, Lcom/google/ar/core/af;->H:[Lcom/google/ar/core/af;

    .line 1
    invoke-virtual {v0}, [Lcom/google/ar/core/af;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ar/core/af;

    return-object v0
.end method
