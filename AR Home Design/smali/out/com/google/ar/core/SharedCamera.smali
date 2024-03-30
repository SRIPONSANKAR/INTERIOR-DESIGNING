.class public Lcom/google/ar/core/SharedCamera;
.super Ljava/lang/Object;
.source "SharedCamera.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ArSdk-SharedCamera"


# instance fields
.field private cameraSharedWithAr:Z

.field private final session:Lcom/google/ar/core/Session;

.field private sharedCameraHandler:Landroid/os/Handler;

.field private final sharedCameraInfo:Lcom/google/ar/core/ak;


# direct methods
.method constructor <init>(Lcom/google/ar/core/Session;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ar/core/ak;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, v1}, Lcom/google/ar/core/ak;-><init>([B)V

    iput-object v0, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraInfo:Lcom/google/ar/core/ak;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ar/core/SharedCamera;->cameraSharedWithAr:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SharedCameraHandlerThread"

    .line 2
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    .line 5
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    return-void
.end method

.method static synthetic access$100(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraDevice;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ar/core/SharedCamera;->onDeviceClosed(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/ar/core/SharedCamera;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/ar/core/SharedCamera;->setDummyListenerToAvoidImageBufferStarvation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ar/core/SharedCamera;->onCaptureSessionConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ar/core/SharedCamera;->onCaptureSessionReady(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ar/core/SharedCamera;->onCaptureSessionActive(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/ar/core/SharedCamera;)Lcom/google/ar/core/ak;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraInfo:Lcom/google/ar/core/ak;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraDevice;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ar/core/SharedCamera;->onDeviceOpened(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/ar/core/SharedCamera;)Landroid/graphics/SurfaceTexture;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/ar/core/SharedCamera;->getGpuSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/ar/core/SharedCamera;)Landroid/view/Surface;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/ar/core/SharedCamera;->getGpuSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraDevice;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ar/core/SharedCamera;->onDeviceDisconnected(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/ar/core/SharedCamera;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/ar/core/SharedCamera;->close()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ar/core/SharedCamera;->onCaptureSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ar/core/SharedCamera;->onCaptureSessionConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method private close()V
    .registers 3

    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraHandler:Landroid/os/Handler;

    .line 2
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v1, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraHandler:Landroid/os/Handler;

    return-void
.end method

.method private getCpuImageReader()Landroid/media/ImageReader;
    .registers 4

    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-object v2, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraInfo:Lcom/google/ar/core/ak;

    .line 2
    invoke-virtual {v2}, Lcom/google/ar/core/ak;->b()Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraGetImageReader(JLandroid/hardware/camera2/CameraDevice;)Landroid/media/ImageReader;

    move-result-object v0

    return-object v0
.end method

.method private getCpuImageReaderMotionTracking()Landroid/media/ImageReader;
    .registers 4

    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-object v2, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraInfo:Lcom/google/ar/core/ak;

    .line 2
    invoke-virtual {v2}, Lcom/google/ar/core/ak;->b()Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraGetImageReaderMotionTracking(JLandroid/hardware/camera2/CameraDevice;)Landroid/media/ImageReader;

    move-result-object v0

    return-object v0
.end method

.method private getGpuSurface()Landroid/view/Surface;
    .registers 4

    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-object v2, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraInfo:Lcom/google/ar/core/ak;

    .line 2
    invoke-virtual {v2}, Lcom/google/ar/core/ak;->b()Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraGetSurface(JLandroid/hardware/camera2/CameraDevice;)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method private getGpuSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 4

    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-object v2, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraInfo:Lcom/google/ar/core/ak;

    .line 2
    invoke-virtual {v2}, Lcom/google/ar/core/ak;->b()Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraGetSurfaceTexture(JLandroid/hardware/camera2/CameraDevice;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setDummyOnImageAvailableListener$0(Landroid/media/ImageReader;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 2
    invoke-virtual {p0}, Landroid/media/Image;->close()V

    :cond_9
    return-void
.end method

.method private native nativeSharedCameraCaptureSessionActive(JLandroid/hardware/camera2/CameraCaptureSession;)V
.end method

.method private native nativeSharedCameraCaptureSessionClosed(JLandroid/hardware/camera2/CameraCaptureSession;)V
.end method

.method private native nativeSharedCameraCaptureSessionConfigureFailed(JLandroid/hardware/camera2/CameraCaptureSession;)V
.end method

.method private native nativeSharedCameraCaptureSessionConfigured(JLandroid/hardware/camera2/CameraCaptureSession;)V
.end method

.method private native nativeSharedCameraCaptureSessionReady(JLandroid/hardware/camera2/CameraCaptureSession;)V
.end method

.method private native nativeSharedCameraGetImageReader(JLandroid/hardware/camera2/CameraDevice;)Landroid/media/ImageReader;
.end method

.method private native nativeSharedCameraGetImageReaderMotionTracking(JLandroid/hardware/camera2/CameraDevice;)Landroid/media/ImageReader;
.end method

.method private native nativeSharedCameraGetSurface(JLandroid/hardware/camera2/CameraDevice;)Landroid/view/Surface;
.end method

.method private native nativeSharedCameraGetSurfaceTexture(JLandroid/hardware/camera2/CameraDevice;)Landroid/graphics/SurfaceTexture;
.end method

.method private native nativeSharedCameraOnClosed(JLandroid/hardware/camera2/CameraDevice;)V
.end method

.method private native nativeSharedCameraOnDisconnected(JLandroid/hardware/camera2/CameraDevice;)V
.end method

.method private native nativeSharedCameraOnOpened(JLandroid/hardware/camera2/CameraDevice;)V
.end method

.method private native nativeSharedCameraSetAppSurfaces(JLjava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeSharedCameraSetCaptureCallback(JLandroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)V
.end method

.method private onCaptureSessionActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 4

    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraCaptureSessionActive(JLandroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method private onCaptureSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 4

    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraCaptureSessionClosed(JLandroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method private onCaptureSessionConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 4

    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraCaptureSessionConfigureFailed(JLandroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method private onCaptureSessionConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 4

    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraCaptureSessionConfigured(JLandroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method private onCaptureSessionReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 4

    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraCaptureSessionReady(JLandroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method private onDeviceClosed(Landroid/hardware/camera2/CameraDevice;)V
    .registers 4

    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraOnClosed(JLandroid/hardware/camera2/CameraDevice;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ar/core/SharedCamera;->cameraSharedWithAr:Z

    return-void
.end method

.method private onDeviceDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .registers 4

    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraOnDisconnected(JLandroid/hardware/camera2/CameraDevice;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ar/core/SharedCamera;->cameraSharedWithAr:Z

    iget-object p1, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraInfo:Lcom/google/ar/core/ak;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/ar/core/ak;->d(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method private onDeviceOpened(Landroid/hardware/camera2/CameraDevice;)V
    .registers 4

    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraInfo:Lcom/google/ar/core/ak;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/ar/core/ak;->d(Landroid/hardware/camera2/CameraDevice;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ar/core/SharedCamera;->cameraSharedWithAr:Z

    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    .line 2
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraOnOpened(JLandroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method private setDummyListenerToAvoidImageBufferStarvation()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/ar/core/SharedCamera;->getCpuImageReader()Landroid/media/ImageReader;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ar/core/SharedCamera;->setDummyOnImageAvailableListener(Landroid/media/ImageReader;)V

    .line 2
    invoke-direct {p0}, Lcom/google/ar/core/SharedCamera;->getCpuImageReaderMotionTracking()Landroid/media/ImageReader;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ar/core/SharedCamera;->setDummyOnImageAvailableListener(Landroid/media/ImageReader;)V

    return-void
.end method

.method private setDummyOnImageAvailableListener(Landroid/media/ImageReader;)V
    .registers 4

    if-eqz p1, :cond_9

    .line 1
    sget-object v0, Lcom/google/ar/core/SharedCamera$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/ar/core/SharedCamera$$ExternalSyntheticLambda0;

    iget-object v1, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public createARDeviceStateCallback(Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/CameraDevice$StateCallback;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/ar/core/ai;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/ar/core/ai;-><init>(Lcom/google/ar/core/SharedCamera;Landroid/os/Handler;Landroid/hardware/camera2/CameraDevice$StateCallback;)V

    return-object v0
.end method

.method public createARSessionStateCallback(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/ar/core/aj;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/ar/core/aj;-><init>(Lcom/google/ar/core/SharedCamera;Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    return-object v0
.end method

.method public getArCoreSurfaces()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraInfo:Lcom/google/ar/core/ak;

    .line 2
    invoke-virtual {v1}, Lcom/google/ar/core/ak;->c()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-direct {p0}, Lcom/google/ar/core/SharedCamera;->getCpuImageReaderMotionTracking()Landroid/media/ImageReader;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 4
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1b
    invoke-direct {p0}, Lcom/google/ar/core/SharedCamera;->getCpuImageReader()Landroid/media/ImageReader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 2

    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraInfo:Lcom/google/ar/core/ak;

    .line 1
    invoke-virtual {v0}, Lcom/google/ar/core/ak;->a()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method pause()V
    .registers 2

    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraInfo:Lcom/google/ar/core/ak;

    .line 1
    invoke-virtual {v0}, Lcom/google/ar/core/ak;->b()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-direct {p0}, Lcom/google/ar/core/SharedCamera;->setDummyListenerToAvoidImageBufferStarvation()V

    :cond_b
    return-void
.end method

.method public setAppSurfaces(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraInfo:Lcom/google/ar/core/ak;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/ar/core/ak;->e(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    .line 2
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraSetAppSurfaces(JLjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public setCaptureCallback(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)V
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraSetCaptureCallback(JLandroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)V

    return-void
.end method
