.class final enum Lcom/google/ar/core/ag;
.super Ljava/lang/Enum;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ar/core/ag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/ar/core/ag;

.field public static final enum b:Lcom/google/ar/core/ag;

.field public static final enum c:Lcom/google/ar/core/ag;

.field public static final enum d:Lcom/google/ar/core/ag;

.field public static final enum e:Lcom/google/ar/core/ag;

.field public static final enum f:Lcom/google/ar/core/ag;

.field public static final enum g:Lcom/google/ar/core/ag;

.field public static final enum h:Lcom/google/ar/core/ag;

.field private static final synthetic j:[Lcom/google/ar/core/ag;


# instance fields
.field final i:I

.field private final k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Lcom/google/ar/core/ag;

    const-class v1, Lcom/google/ar/core/Trackable;

    const/4 v2, 0x0

    const-string v3, "BASE_TRACKABLE"

    const v4, 0x41520100

    .line 1
    invoke-direct {v0, v3, v2, v4, v1}, Lcom/google/ar/core/ag;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/ag;->a:Lcom/google/ar/core/ag;

    new-instance v0, Lcom/google/ar/core/ag;

    const/4 v1, 0x1

    const-string v3, "UNKNOWN_TO_JAVA"

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 2
    invoke-direct {v0, v3, v1, v4, v5}, Lcom/google/ar/core/ag;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/ag;->b:Lcom/google/ar/core/ag;

    new-instance v0, Lcom/google/ar/core/ag;

    const-class v3, Lcom/google/ar/core/Plane;

    const/4 v4, 0x2

    const-string v5, "PLANE"

    const v6, 0x41520101

    .line 3
    invoke-direct {v0, v5, v4, v6, v3}, Lcom/google/ar/core/ag;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/ag;->c:Lcom/google/ar/core/ag;

    new-instance v0, Lcom/google/ar/core/ag;

    const-class v3, Lcom/google/ar/core/Point;

    const/4 v5, 0x3

    const-string v6, "POINT"

    const v7, 0x41520102

    .line 4
    invoke-direct {v0, v6, v5, v7, v3}, Lcom/google/ar/core/ag;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/ag;->d:Lcom/google/ar/core/ag;

    new-instance v0, Lcom/google/ar/core/ag;

    const-class v3, Lcom/google/ar/core/AugmentedImage;

    const/4 v6, 0x4

    const-string v7, "AUGMENTED_IMAGE"

    const v8, 0x41520104

    .line 5
    invoke-direct {v0, v7, v6, v8, v3}, Lcom/google/ar/core/ag;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/ag;->e:Lcom/google/ar/core/ag;

    new-instance v0, Lcom/google/ar/core/ag;

    const-class v3, Lcom/google/ar/core/AugmentedFace;

    const/4 v7, 0x5

    const-string v8, "FACE"

    const v9, 0x41520105

    .line 6
    invoke-direct {v0, v8, v7, v9, v3}, Lcom/google/ar/core/ag;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/ag;->f:Lcom/google/ar/core/ag;

    new-instance v0, Lcom/google/ar/core/ag;

    const-class v3, Lcom/google/ar/core/DepthPoint;

    const/4 v8, 0x6

    const-string v9, "DEPTH_POINT"

    const v10, 0x41520111

    .line 7
    invoke-direct {v0, v9, v8, v10, v3}, Lcom/google/ar/core/ag;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/ag;->g:Lcom/google/ar/core/ag;

    new-instance v0, Lcom/google/ar/core/ag;

    const-class v3, Lcom/google/ar/core/InstantPlacementPoint;

    const/4 v9, 0x7

    const-string v10, "INSTANT_PLACEMENT_POINT"

    const v11, 0x41520112

    .line 8
    invoke-direct {v0, v10, v9, v11, v3}, Lcom/google/ar/core/ag;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/ag;->h:Lcom/google/ar/core/ag;

    const/16 v3, 0x8

    new-array v3, v3, [Lcom/google/ar/core/ag;

    sget-object v10, Lcom/google/ar/core/ag;->a:Lcom/google/ar/core/ag;

    aput-object v10, v3, v2

    sget-object v2, Lcom/google/ar/core/ag;->b:Lcom/google/ar/core/ag;

    aput-object v2, v3, v1

    sget-object v1, Lcom/google/ar/core/ag;->c:Lcom/google/ar/core/ag;

    aput-object v1, v3, v4

    sget-object v1, Lcom/google/ar/core/ag;->d:Lcom/google/ar/core/ag;

    aput-object v1, v3, v5

    sget-object v1, Lcom/google/ar/core/ag;->e:Lcom/google/ar/core/ag;

    aput-object v1, v3, v6

    sget-object v1, Lcom/google/ar/core/ag;->f:Lcom/google/ar/core/ag;

    aput-object v1, v3, v7

    sget-object v1, Lcom/google/ar/core/ag;->g:Lcom/google/ar/core/ag;

    aput-object v1, v3, v8

    aput-object v0, v3, v9

    sput-object v3, Lcom/google/ar/core/ag;->j:[Lcom/google/ar/core/ag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/ar/core/Trackable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/ar/core/ag;->i:I

    iput-object p4, p0, Lcom/google/ar/core/ag;->k:Ljava/lang/Class;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/google/ar/core/ag;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/ar/core/Trackable;",
            ">;)",
            "Lcom/google/ar/core/ag;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/ar/core/ag;->values()[Lcom/google/ar/core/ag;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lcom/google/ar/core/ag;->k:Ljava/lang/Class;

    if-eqz v4, :cond_16

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    goto :goto_16

    :cond_15
    return-object v3

    :cond_16
    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_19
    sget-object p0, Lcom/google/ar/core/ag;->b:Lcom/google/ar/core/ag;

    return-object p0
.end method

.method public static values()[Lcom/google/ar/core/ag;
    .registers 1

    sget-object v0, Lcom/google/ar/core/ag;->j:[Lcom/google/ar/core/ag;

    .line 1
    invoke-virtual {v0}, [Lcom/google/ar/core/ag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ar/core/ag;

    return-object v0
.end method
