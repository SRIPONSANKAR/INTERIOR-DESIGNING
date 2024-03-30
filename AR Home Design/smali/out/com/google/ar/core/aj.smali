.class final Lcom/google/ar/core/aj;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SharedCamera.java"


# static fields
.field public static final synthetic d:I


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field final synthetic c:Lcom/google/ar/core/SharedCamera;


# direct methods
.method constructor <init>(Lcom/google/ar/core/SharedCamera;Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/google/ar/core/aj;->c:Lcom/google/ar/core/SharedCamera;

    iput-object p2, p0, Lcom/google/ar/core/aj;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/ar/core/aj;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 1
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/aj;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ar/core/aj;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    new-instance v2, Lcom/google/ar/core/SharedCamera$2$$ExternalSyntheticLambda0;

    .line 1
    invoke-direct {v2, v1, p1}, Lcom/google/ar/core/SharedCamera$2$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/google/ar/core/aj;->c:Lcom/google/ar/core/SharedCamera;

    .line 2
    invoke-static {v0, p1}, Lcom/google/ar/core/SharedCamera;->access$1300(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public final onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/aj;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ar/core/aj;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    new-instance v2, Lcom/google/ar/core/SharedCamera$2$$ExternalSyntheticLambda1;

    .line 1
    invoke-direct {v2, v1, p1}, Lcom/google/ar/core/SharedCamera$2$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/google/ar/core/aj;->c:Lcom/google/ar/core/SharedCamera;

    .line 2
    invoke-static {v0, p1}, Lcom/google/ar/core/SharedCamera;->access$800(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public final onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/aj;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ar/core/aj;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    new-instance v2, Lcom/google/ar/core/SharedCamera$2$$ExternalSyntheticLambda2;

    .line 1
    invoke-direct {v2, v1, p1}, Lcom/google/ar/core/SharedCamera$2$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/google/ar/core/aj;->c:Lcom/google/ar/core/SharedCamera;

    .line 2
    invoke-static {v0, p1}, Lcom/google/ar/core/SharedCamera;->access$1100(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public final onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/aj;->c:Lcom/google/ar/core/SharedCamera;

    .line 1
    invoke-static {v0}, Lcom/google/ar/core/SharedCamera;->access$200(Lcom/google/ar/core/SharedCamera;)Lcom/google/ar/core/ak;

    iget-object v0, p0, Lcom/google/ar/core/aj;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ar/core/aj;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    new-instance v2, Lcom/google/ar/core/SharedCamera$2$$ExternalSyntheticLambda3;

    .line 2
    invoke-direct {v2, v1, p1}, Lcom/google/ar/core/SharedCamera$2$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/google/ar/core/aj;->c:Lcom/google/ar/core/SharedCamera;

    .line 3
    invoke-static {v0, p1}, Lcom/google/ar/core/SharedCamera;->access$900(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraCaptureSession;)V

    iget-object p1, p0, Lcom/google/ar/core/aj;->c:Lcom/google/ar/core/SharedCamera;

    .line 4
    invoke-static {p1}, Lcom/google/ar/core/SharedCamera;->access$200(Lcom/google/ar/core/SharedCamera;)Lcom/google/ar/core/ak;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ar/core/ak;->b()Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/google/ar/core/aj;->c:Lcom/google/ar/core/SharedCamera;

    .line 5
    invoke-static {p1}, Lcom/google/ar/core/SharedCamera;->access$1000(Lcom/google/ar/core/SharedCamera;)V

    :cond_27
    return-void
.end method

.method public final onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/aj;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ar/core/aj;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    new-instance v2, Lcom/google/ar/core/SharedCamera$2$$ExternalSyntheticLambda4;

    .line 1
    invoke-direct {v2, v1, p1}, Lcom/google/ar/core/SharedCamera$2$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/google/ar/core/aj;->c:Lcom/google/ar/core/SharedCamera;

    .line 2
    invoke-static {v0, p1}, Lcom/google/ar/core/SharedCamera;->access$1200(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method
