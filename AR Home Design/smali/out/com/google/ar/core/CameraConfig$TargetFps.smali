.class public final enum Lcom/google/ar/core/CameraConfig$TargetFps;
.super Ljava/lang/Enum;
.source "CameraConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ar/core/CameraConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TargetFps"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ar/core/CameraConfig$TargetFps;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/CameraConfig$TargetFps;

.field public static final enum TARGET_FPS_30:Lcom/google/ar/core/CameraConfig$TargetFps;

.field public static final enum TARGET_FPS_60:Lcom/google/ar/core/CameraConfig$TargetFps;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/CameraConfig$TargetFps;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/ar/core/CameraConfig$TargetFps;

    sget-object v1, Lcom/google/ar/core/CameraConfig$TargetFps;->TARGET_FPS_30:Lcom/google/ar/core/CameraConfig$TargetFps;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ar/core/CameraConfig$TargetFps;->TARGET_FPS_60:Lcom/google/ar/core/CameraConfig$TargetFps;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/google/ar/core/CameraConfig$TargetFps;

    const/4 v1, 0x1

    const-string v2, "TARGET_FPS_30"

    const/4 v3, 0x0

    .line 1
    invoke-direct {v0, v2, v3, v1}, Lcom/google/ar/core/CameraConfig$TargetFps;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/CameraConfig$TargetFps;->TARGET_FPS_30:Lcom/google/ar/core/CameraConfig$TargetFps;

    new-instance v0, Lcom/google/ar/core/CameraConfig$TargetFps;

    const-string v2, "TARGET_FPS_60"

    const/4 v3, 0x2

    .line 2
    invoke-direct {v0, v2, v1, v3}, Lcom/google/ar/core/CameraConfig$TargetFps;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/CameraConfig$TargetFps;->TARGET_FPS_60:Lcom/google/ar/core/CameraConfig$TargetFps;

    .line 3
    invoke-static {}, Lcom/google/ar/core/CameraConfig$TargetFps;->$values()[Lcom/google/ar/core/CameraConfig$TargetFps;

    move-result-object v0

    sput-object v0, Lcom/google/ar/core/CameraConfig$TargetFps;->$VALUES:[Lcom/google/ar/core/CameraConfig$TargetFps;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/ar/core/CameraConfig$TargetFps;->nativeCode:I

    return-void
.end method

.method static forBitFlags(I)Ljava/util/EnumSet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/EnumSet<",
            "Lcom/google/ar/core/CameraConfig$TargetFps;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/ar/core/CameraConfig$TargetFps;

    .line 1
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/ar/core/CameraConfig$TargetFps;->values()[Lcom/google/ar/core/CameraConfig$TargetFps;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1b

    aget-object v4, v1, v3

    .line 3
    iget v5, v4, Lcom/google/ar/core/CameraConfig$TargetFps;->nativeCode:I

    and-int/2addr v5, p0

    if-eqz v5, :cond_18

    .line 4
    invoke-virtual {v0, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1b
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/CameraConfig$TargetFps;
    .registers 2

    const-class v0, Lcom/google/ar/core/CameraConfig$TargetFps;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/ar/core/CameraConfig$TargetFps;

    return-object p0
.end method

.method public static values()[Lcom/google/ar/core/CameraConfig$TargetFps;
    .registers 1

    sget-object v0, Lcom/google/ar/core/CameraConfig$TargetFps;->$VALUES:[Lcom/google/ar/core/CameraConfig$TargetFps;

    .line 1
    invoke-virtual {v0}, [Lcom/google/ar/core/CameraConfig$TargetFps;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ar/core/CameraConfig$TargetFps;

    return-object v0
.end method
