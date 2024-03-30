.class final Lcom/google/ar/core/ak;
.super Ljava/lang/Object;
.source "SharedCamera.java"


# instance fields
.field private a:Landroid/hardware/camera2/CameraDevice;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Landroid/graphics/SurfaceTexture;

.field private d:Landroid/view/Surface;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ar/core/ak;->a:Landroid/hardware/camera2/CameraDevice;

    new-instance v1, Ljava/util/HashMap;

    .line 2
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/ar/core/ak;->b:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/ar/core/ak;->c:Landroid/graphics/SurfaceTexture;

    iput-object v0, p0, Lcom/google/ar/core/ak;->d:Landroid/view/Surface;

    return-void
.end method

.method synthetic constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ar/core/ak;->a:Landroid/hardware/camera2/CameraDevice;

    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ar/core/ak;->b:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/ar/core/ak;->c:Landroid/graphics/SurfaceTexture;

    iput-object p1, p0, Lcom/google/ar/core/ak;->d:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/SurfaceTexture;
    .registers 2

    iget-object v0, p0, Lcom/google/ar/core/ak;->c:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public final b()Landroid/hardware/camera2/CameraDevice;
    .registers 2

    iget-object v0, p0, Lcom/google/ar/core/ak;->a:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method public final c()Landroid/view/Surface;
    .registers 2

    iget-object v0, p0, Lcom/google/ar/core/ak;->d:Landroid/view/Surface;

    return-object v0
.end method

.method public final d(Landroid/hardware/camera2/CameraDevice;)V
    .registers 2

    iput-object p1, p0, Lcom/google/ar/core/ak;->a:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ar/core/ak;->b:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final f(Landroid/view/Surface;)V
    .registers 2

    iput-object p1, p0, Lcom/google/ar/core/ak;->d:Landroid/view/Surface;

    return-void
.end method

.method public final g(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    iput-object p1, p0, Lcom/google/ar/core/ak;->c:Landroid/graphics/SurfaceTexture;

    return-void
.end method
