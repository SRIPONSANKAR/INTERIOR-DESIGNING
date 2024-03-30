.class public Lcom/unity3d/player/UnityPlayer;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/unity3d/player/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/UnityPlayer$f;,
        Lcom/unity3d/player/UnityPlayer$a;,
        Lcom/unity3d/player/UnityPlayer$c;,
        Lcom/unity3d/player/UnityPlayer$e;,
        Lcom/unity3d/player/UnityPlayer$b;,
        Lcom/unity3d/player/UnityPlayer$d;
    }
.end annotation


# static fields
.field public static currentActivity:Landroid/app/Activity;

.field private static t:Z


# instance fields
.field a:Lcom/unity3d/player/UnityPlayer$e;

.field b:Lcom/unity3d/player/k;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Lcom/unity3d/player/n;

.field private final g:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Z

.field private j:Lcom/unity3d/player/UnityPlayer$c;

.field private k:Landroid/telephony/TelephonyManager;

.field private l:Landroid/content/ClipboardManager;

.field private m:Lcom/unity3d/player/l;

.field private n:Lcom/unity3d/player/GoogleARCoreApi;

.field private o:Lcom/unity3d/player/UnityPlayer$a;

.field private p:Lcom/unity3d/player/Camera2Wrapper;

.field private q:Lcom/unity3d/player/HFPStatus;

.field private r:Landroid/content/Context;

.field private s:Landroid/view/SurfaceView;

.field private u:Z

.field private v:Z

.field private w:Lcom/unity3d/player/q;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/unity3d/player/m;

    invoke-direct {v0}, Lcom/unity3d/player/m;-><init>()V

    invoke-virtual {v0}, Lcom/unity3d/player/m;->a()Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/player/UnityPlayer;->t:Z

    const-string v0, "main"

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->loadLibraryStatic(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/unity3d/player/UnityPlayer;->t:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/unity3d/player/UnityPlayer;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->d:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unity3d/player/UnityPlayer;->e:Z

    new-instance v2, Lcom/unity3d/player/n;

    invoke-direct {v2}, Lcom/unity3d/player/n;-><init>()V

    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->f:Lcom/unity3d/player/n;

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->h:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/unity3d/player/UnityPlayer$e;

    invoke-direct {v3, p0, v0}, Lcom/unity3d/player/UnityPlayer$e;-><init>(Lcom/unity3d/player/UnityPlayer;B)V

    iput-object v3, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/UnityPlayer$e;

    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Z

    new-instance v3, Lcom/unity3d/player/UnityPlayer$c;

    invoke-direct {v3, p0, v0}, Lcom/unity3d/player/UnityPlayer$c;-><init>(Lcom/unity3d/player/UnityPlayer;B)V

    iput-object v3, p0, Lcom/unity3d/player/UnityPlayer;->j:Lcom/unity3d/player/UnityPlayer$c;

    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/GoogleARCoreApi;

    new-instance v3, Lcom/unity3d/player/UnityPlayer$a;

    invoke-direct {v3, p0}, Lcom/unity3d/player/UnityPlayer$a;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iput-object v3, p0, Lcom/unity3d/player/UnityPlayer;->o:Lcom/unity3d/player/UnityPlayer$a;

    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->p:Lcom/unity3d/player/Camera2Wrapper;

    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->q:Lcom/unity3d/player/HFPStatus;

    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->v:Z

    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->b:Lcom/unity3d/player/k;

    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_4d

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    sput-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    iput v2, p0, Lcom/unity3d/player/UnityPlayer;->c:I

    :cond_4d
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/unity3d/player/UnityPlayer;->a(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-eqz v2, :cond_74

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->k()Z

    move-result v2

    if-eqz v2, :cond_74

    new-instance v2, Lcom/unity3d/player/l;

    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    invoke-static {}, Lcom/unity3d/player/l$a;->a()[I

    move-result-object v4

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getSplashMode()I

    move-result v5

    aget v4, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/unity3d/player/l;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/l;

    invoke-virtual {p0, v2}, Lcom/unity3d/player/UnityPlayer;->addView(Landroid/view/View;)V

    :cond_74
    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/player/UnityPlayer;->a(Landroid/content/pm/ApplicationInfo;)V

    invoke-static {}, Lcom/unity3d/player/n;->c()Z

    move-result v2

    if-nez v2, :cond_ac

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Failure to initialize!"

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/unity3d/player/UnityPlayer$1;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer$1;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    const-string v2, "OK"

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v1, "Your hardware does not support this application, sorry!"

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_ac
    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->initJni(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->f:Lcom/unity3d/player/n;

    invoke-virtual {p1, v1}, Lcom/unity3d/player/n;->c(Z)V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->c()Landroid/view/SurfaceView;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->s:Landroid/view/SurfaceView;

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/l;

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->bringChildToFront(Landroid/view/View;)V

    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->u:Z

    const-class p1, Lcom/unity3d/player/UnityWebRequest;

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeInitWebRequest(Ljava/lang/Class;)V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->m()V

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/telephony/TelephonyManager;

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->l:Landroid/content/ClipboardManager;

    new-instance p1, Lcom/unity3d/player/Camera2Wrapper;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/unity3d/player/Camera2Wrapper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->p:Lcom/unity3d/player/Camera2Wrapper;

    new-instance p1, Lcom/unity3d/player/HFPStatus;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/unity3d/player/HFPStatus;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->q:Lcom/unity3d/player/HFPStatus;

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/UnityPlayer$e;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer$e;->start()V

    return-void
.end method

.method public static UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/unity3d/player/n;->c()Z

    move-result v0

    if-nez v0, :cond_21

    const/4 p2, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Native libraries not loaded - dropping message for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return-void

    :cond_21
    invoke-static {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->nativeUnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .registers 2

    new-instance v0, Lcom/unity3d/player/UnityPlayer$17;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$17;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(ILandroid/view/Surface;)V
    .registers 3

    iget-boolean p1, p0, Lcom/unity3d/player/UnityPlayer;->d:Z

    if-eqz p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->b(ILandroid/view/Surface;)Z

    return-void
.end method

.method private static a(Landroid/app/Activity;)V
    .registers 4

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.intent.extra.VR_LAUNCH"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_23

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_23
    return-void
.end method

.method private static a(Landroid/content/pm/ApplicationInfo;)V
    .registers 2

    sget-boolean v0, Lcom/unity3d/player/UnityPlayer;->t:Z

    if-eqz v0, :cond_f

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {p0}, Lcom/unity3d/player/NativeLoader;->load(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-static {}, Lcom/unity3d/player/n;->a()V

    :cond_f
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->f:Lcom/unity3d/player/n;

    invoke-virtual {v0}, Lcom/unity3d/player/n;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz p1, :cond_30

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Lcom/unity3d/player/UnityPlayer;

    if-eqz v3, :cond_1e

    move-object v3, v2

    check-cast v3, Lcom/unity3d/player/UnityPlayer;

    if-eq v3, p0, :cond_30

    :cond_1e
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_27

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_27
    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->bringChildToFront(Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_30
    if-eqz p2, :cond_40

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_40

    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p2}, Lcom/unity3d/player/UnityPlayer;->removeView(Landroid/view/View;)V

    :cond_40
    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    :cond_45
    return-void
.end method

.method private a(Lcom/unity3d/player/UnityPlayer$f;)V
    .registers 3

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->nativeSetInputSelection(II)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;ILandroid/view/Surface;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->nativeRecreateGfxState(ILandroid/view/Surface;)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;Landroid/view/Surface;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/unity3d/player/UnityPlayer;->a(ILandroid/view/Surface;)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeSetInputString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeFocusChanged(Z)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;)Z
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->k()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/unity3d/player/UnityPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->a()V

    return-void
.end method

.method static synthetic b(Lcom/unity3d/player/UnityPlayer;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeMuteMasterAudio(Z)V

    return-void
.end method

.method private b(Ljava/lang/Runnable;)V
    .registers 4

    invoke-static {}, Lcom/unity3d/player/n;->c()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/UnityPlayer$e;

    if-ne v0, v1, :cond_13

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_13
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static b()Z
    .registers 5

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010058

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_26

    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_26

    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_26

    return v4

    :cond_26
    return v1
.end method

.method private b(ILandroid/view/Surface;)Z
    .registers 6

    invoke-static {}, Lcom/unity3d/player/n;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->f:Lcom/unity3d/player/n;

    invoke-virtual {v0}, Lcom/unity3d/player/n;->e()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_47

    :cond_10
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-instance v1, Lcom/unity3d/player/UnityPlayer$20;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/unity3d/player/UnityPlayer$20;-><init>(Lcom/unity3d/player/UnityPlayer;ILandroid/view/Surface;Ljava/util/concurrent/Semaphore;)V

    if-nez p1, :cond_28

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/UnityPlayer$e;

    if-nez p2, :cond_24

    invoke-virtual {v2, v1}, Lcom/unity3d/player/UnityPlayer$e;->b(Ljava/lang/Runnable;)V

    goto :goto_2b

    :cond_24
    invoke-virtual {v2, v1}, Lcom/unity3d/player/UnityPlayer$e;->c(Ljava/lang/Runnable;)V

    goto :goto_2b

    :cond_28
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_2b
    if-nez p2, :cond_45

    if-nez p1, :cond_45

    const-wide/16 p1, 0x4

    const/4 v1, 0x5

    :try_start_32
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_45

    const-string p1, "Timeout while trying detaching primary window."

    invoke-static {v1, p1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_3f} :catch_40

    goto :goto_45

    :catch_40
    const-string p1, "UI thread got interrupted while trying to detach the primary window from the Unity Engine."

    invoke-static {v1, p1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    :cond_45
    :goto_45
    const/4 p1, 0x1

    return p1

    :cond_47
    :goto_47
    return v1
.end method

.method private c()Landroid/view/SurfaceView;
    .registers 5

    new-instance v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/unity3d/player/UnityPlayer;->b()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v3, -0x3

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    goto :goto_22

    :cond_1a
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v3, -0x1

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :goto_22
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    new-instance v3, Lcom/unity3d/player/UnityPlayer$18;

    invoke-direct {v3, p0}, Lcom/unity3d/player/UnityPlayer$18;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setFocusable(Z)V

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    return-object v0
.end method

.method static synthetic c(Lcom/unity3d/player/UnityPlayer;)Z
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeRender()Z

    move-result p0

    return p0
.end method

.method private d()V
    .registers 3

    invoke-static {}, Lcom/unity3d/player/n;->c()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->f:Lcom/unity3d/player/n;

    invoke-virtual {v0}, Lcom/unity3d/player/n;->e()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_19

    :cond_f
    new-instance v0, Lcom/unity3d/player/UnityPlayer$19;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$19;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/UnityPlayer$e;

    invoke-virtual {v1, v0}, Lcom/unity3d/player/UnityPlayer$e;->d(Ljava/lang/Runnable;)V

    :cond_19
    :goto_19
    return-void
.end method

.method static synthetic d(Lcom/unity3d/player/UnityPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->e()V

    return-void
.end method

.method static synthetic e(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/l;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/l;

    return-object p0
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_15

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_15
    return-void
.end method

.method static synthetic f(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/l;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/l;

    return-object v0
.end method

.method private f()V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v0}, Lcom/unity3d/player/UnityPlayer;->reportSoftInputStr(Ljava/lang/String;IZ)V

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->f:Lcom/unity3d/player/n;

    invoke-virtual {v1}, Lcom/unity3d/player/n;->g()Z

    move-result v1

    if-nez v1, :cond_e

    return-void

    :cond_e
    invoke-static {}, Lcom/unity3d/player/n;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4f

    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_26

    new-instance v3, Lcom/unity3d/player/UnityPlayer$22;

    invoke-direct {v3, p0, v1}, Lcom/unity3d/player/UnityPlayer$22;-><init>(Lcom/unity3d/player/UnityPlayer;Ljava/util/concurrent/Semaphore;)V

    goto :goto_2b

    :cond_26
    new-instance v3, Lcom/unity3d/player/UnityPlayer$23;

    invoke-direct {v3, p0, v1}, Lcom/unity3d/player/UnityPlayer$23;-><init>(Lcom/unity3d/player/UnityPlayer;Ljava/util/concurrent/Semaphore;)V

    :goto_2b
    iget-object v4, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/UnityPlayer$e;

    invoke-virtual {v4, v3}, Lcom/unity3d/player/UnityPlayer$e;->a(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x4

    const/4 v5, 0x5

    :try_start_33
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_46

    const-string v3, "Timeout while trying to pause the Unity Engine."

    invoke-static {v5, v3}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_40} :catch_41

    goto :goto_46

    :catch_41
    const-string v3, "UI thread got interrupted while trying to pause the Unity Engine."

    invoke-static {v5, v3}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    :cond_46
    :goto_46
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    move-result v1

    if-lez v1, :cond_4f

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->destroy()V

    :cond_4f
    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->f:Lcom/unity3d/player/n;

    invoke-virtual {v1, v2}, Lcom/unity3d/player/n;->d(Z)V

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->f:Lcom/unity3d/player/n;

    invoke-virtual {v1, v0}, Lcom/unity3d/player/n;->b(Z)V

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Z

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->j:Lcom/unity3d/player/UnityPlayer$c;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_64
    return-void
.end method

.method private g()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->v:Z

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeDone()V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->f:Lcom/unity3d/player/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unity3d/player/n;->c(Z)V

    return-void
.end method

.method static synthetic g(Lcom/unity3d/player/UnityPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->d()V

    return-void
.end method

.method private h()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->f:Lcom/unity3d/player/n;

    invoke-virtual {v0}, Lcom/unity3d/player/n;->f()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->f:Lcom/unity3d/player/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unity3d/player/n;->d(Z)V

    new-instance v0, Lcom/unity3d/player/UnityPlayer$3;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$3;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/UnityPlayer$e;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer$e;->b()V

    return-void
.end method

.method static synthetic h(Lcom/unity3d/player/UnityPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeSendSurfaceChangedEvent()V

    return-void
.end method

.method private static i()V
    .registers 2

    invoke-static {}, Lcom/unity3d/player/n;->c()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/unity3d/player/NativeLoader;->unload()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/unity3d/player/n;->b()V

    return-void

    :cond_11
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    const-string v1, "Unable to unload libraries from libmain.so"

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic i(Lcom/unity3d/player/UnityPlayer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/unity3d/player/UnityPlayer;->d:Z

    return p0
.end method

.method private final native initJni(Landroid/content/Context;)V
.end method

.method private j()Landroid/content/pm/ApplicationInfo;
    .registers 4

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/unity3d/player/UnityPlayer;)Landroid/view/SurfaceView;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->s:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static synthetic k(Lcom/unity3d/player/UnityPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->g()V

    return-void
.end method

.method private k()Z
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->j()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "unity.splash-enable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    :catch_d
    const/4 v0, 0x0

    return v0
.end method

.method private l()Z
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->j()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "unity.tango-enable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    :catch_d
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic l(Lcom/unity3d/player/UnityPlayer;)Z
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativePause()Z

    move-result p0

    return p0
.end method

.method protected static loadLibraryStatic(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x6

    :try_start_2
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_5} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7

    const/4 p0, 0x1

    return p0

    :catch_7
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return v0

    :catch_1a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to find "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12
.end method

.method private m()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_11

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_11
    return-void
.end method

.method static synthetic m(Lcom/unity3d/player/UnityPlayer;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->u:Z

    return v0
.end method

.method static synthetic n(Lcom/unity3d/player/UnityPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeLowMemory()V

    return-void
.end method

.method private final native nativeDone()V
.end method

.method private final native nativeFocusChanged(Z)V
.end method

.method private final native nativeInitWebRequest(Ljava/lang/Class;)V
.end method

.method private final native nativeInjectEvent(Landroid/view/InputEvent;)Z
.end method

.method private final native nativeIsAutorotationOn()Z
.end method

.method private final native nativeLowMemory()V
.end method

.method private final native nativeMuteMasterAudio(Z)V
.end method

.method private final native nativePause()Z
.end method

.method private final native nativeRecreateGfxState(ILandroid/view/Surface;)V
.end method

.method private final native nativeRender()Z
.end method

.method private final native nativeRestartActivityIndicator()V
.end method

.method private final native nativeResume()V
.end method

.method private final native nativeSendSurfaceChangedEvent()V
.end method

.method private final native nativeSetInputSelection(II)V
.end method

.method private final native nativeSetInputString(Ljava/lang/String;)V
.end method

.method private final native nativeSoftInputCanceled()V
.end method

.method private final native nativeSoftInputClosed()V
.end method

.method private final native nativeSoftInputLostFocus()V
.end method

.method private static native nativeUnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method static synthetic o(Lcom/unity3d/player/UnityPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeResume()V

    return-void
.end method

.method static synthetic p(Lcom/unity3d/player/UnityPlayer;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic q(Lcom/unity3d/player/UnityPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeSoftInputCanceled()V

    return-void
.end method

.method static synthetic r(Lcom/unity3d/player/UnityPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeSoftInputClosed()V

    return-void
.end method

.method static synthetic s(Lcom/unity3d/player/UnityPlayer;)Landroid/view/SurfaceView;
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->c()Landroid/view/SurfaceView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic t(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/q;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->w:Lcom/unity3d/player/q;

    return-object v0
.end method

.method static synthetic u(Lcom/unity3d/player/UnityPlayer;)Z
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeIsAutorotationOn()Z

    move-result p0

    return p0
.end method

.method static synthetic v(Lcom/unity3d/player/UnityPlayer;)I
    .registers 1

    iget p0, p0, Lcom/unity3d/player/UnityPlayer;->c:I

    return p0
.end method


# virtual methods
.method final a(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_c

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_c
    const/4 p1, 0x5

    const-string v0, "Not running Unity from an Activity; ignored..."

    invoke-static {p1, v0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return-void
.end method

.method protected addPhoneCallListener()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Z

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->j:Lcom/unity3d/player/UnityPlayer$c;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public addViewToPlayer(Landroid/view/View;Z)Z
    .registers 6

    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->s:Landroid/view/SurfaceView;

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-direct {p0, p1, v0}, Lcom/unity3d/player/UnityPlayer;->a(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    if-eqz p2, :cond_20

    iget-object p2, p0, Lcom/unity3d/player/UnityPlayer;->s:Landroid/view/SurfaceView;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_20

    const/4 p2, 0x1

    goto :goto_21

    :cond_20
    const/4 p2, 0x0

    :goto_21
    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->s:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_2b

    const/4 v2, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    if-eqz p1, :cond_33

    if-nez p2, :cond_34

    if-eqz v2, :cond_33

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :cond_34
    :goto_34
    if-nez v0, :cond_47

    const/4 v1, 0x6

    if-nez p1, :cond_3e

    const-string p1, "addViewToPlayer: Failure adding view to hierarchy"

    invoke-static {v1, p1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    :cond_3e
    if-nez p2, :cond_47

    if-nez v2, :cond_47

    const-string p1, "addViewToPlayer: Failure removing old view from hierarchy"

    invoke-static {v1, p1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    :cond_47
    return v0
.end method

.method public configurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->s:Landroid/view/SurfaceView;

    instance-of v0, p1, Landroid/view/SurfaceView;

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    :cond_d
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->w:Lcom/unity3d/player/q;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/unity3d/player/q;->c()V

    :cond_14
    invoke-static {}, Lcom/unity3d/player/GoogleVrApi;->b()Lcom/unity3d/player/GoogleVrProxy;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/unity3d/player/GoogleVrProxy;->c()V

    :cond_1d
    return-void
.end method

.method public destroy()V
    .registers 5

    invoke-static {}, Lcom/unity3d/player/GoogleVrApi;->b()Lcom/unity3d/player/GoogleVrProxy;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/unity3d/player/GoogleVrApi;->a()V

    :cond_9
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->p:Lcom/unity3d/player/Camera2Wrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/unity3d/player/Camera2Wrapper;->a()V

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->p:Lcom/unity3d/player/Camera2Wrapper;

    :cond_13
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->q:Lcom/unity3d/player/HFPStatus;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/unity3d/player/HFPStatus;->a()V

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->q:Lcom/unity3d/player/HFPStatus;

    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->u:Z

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->f:Lcom/unity3d/player/n;

    invoke-virtual {v0}, Lcom/unity3d/player/n;->d()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    :cond_2a
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/UnityPlayer$e;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer$e;->a()V

    :try_start_2f
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/UnityPlayer$e;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v2, v3}, Lcom/unity3d/player/UnityPlayer$e;->join(J)V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_36} :catch_37

    goto :goto_3c

    :catch_37
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/UnityPlayer$e;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer$e;->interrupt()V

    :goto_3c
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_45

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_45
    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->h:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/unity3d/player/n;->c()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->removeAllViews()V

    :cond_50
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->v:Z

    if-nez v0, :cond_57

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->kill()V

    :cond_57
    invoke-static {}, Lcom/unity3d/player/UnityPlayer;->i()V

    return-void
.end method

.method protected disableLogger()V
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/player/g;->a:Z

    return-void
.end method

.method public displayChanged(ILandroid/view/Surface;)Z
    .registers 4

    if-nez p1, :cond_11

    if-eqz p2, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->d:Z

    new-instance v0, Lcom/unity3d/player/UnityPlayer$21;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$21;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    :cond_11
    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->b(ILandroid/view/Surface;)Z

    move-result p1

    return p1
.end method

.method protected executeGLThreadJobs()V
    .registers 2

    :goto_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_e
    return-void
.end method

.method protected getClipboardText()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->l:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_18
    const-string v0, ""

    :goto_1a
    return-object v0
.end method

.method public getSettings()Landroid/os/Bundle;
    .registers 2

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getSplashMode()I
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->j()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "unity.splash-mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    :catch_d
    const/4 v0, 0x0

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method protected hideSoftInput()V
    .registers 3

    new-instance v0, Lcom/unity3d/player/UnityPlayer$5;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$5;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    sget-boolean v1, Lcom/unity3d/player/j;->b:Z

    if-eqz v1, :cond_12

    new-instance v1, Lcom/unity3d/player/UnityPlayer$6;

    invoke-direct {v1, p0, v0}, Lcom/unity3d/player/UnityPlayer$6;-><init>(Lcom/unity3d/player/UnityPlayer;Ljava/lang/Runnable;)V

    invoke-direct {p0, v1}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer$f;)V

    return-void

    :cond_12
    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init(IZ)V
    .registers 3

    return-void
.end method

.method protected initializeGoogleAr()Z
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/GoogleARCoreApi;

    if-nez v0, :cond_27

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_27

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->l()Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Lcom/unity3d/player/GoogleARCoreApi;

    invoke-direct {v0}, Lcom/unity3d/player/GoogleARCoreApi;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/GoogleARCoreApi;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/GoogleARCoreApi;->initializeARCore(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->f:Lcom/unity3d/player/n;

    invoke-virtual {v0}, Lcom/unity3d/player/n;->d()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/GoogleARCoreApi;

    invoke-virtual {v0}, Lcom/unity3d/player/GoogleARCoreApi;->resumeARCore()V

    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method protected initializeGoogleVr()Z
    .registers 8

    invoke-static {}, Lcom/unity3d/player/GoogleVrApi;->b()Lcom/unity3d/player/GoogleVrProxy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    invoke-static {p0}, Lcom/unity3d/player/GoogleVrApi;->a(Lcom/unity3d/player/f;)V

    invoke-static {}, Lcom/unity3d/player/GoogleVrApi;->b()Lcom/unity3d/player/GoogleVrProxy;

    move-result-object v0

    if-nez v0, :cond_17

    const/4 v0, 0x6

    const-string v2, "Unable to create Google VR subsystem."

    invoke-static {v0, v2}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return v1

    :cond_17
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-instance v3, Lcom/unity3d/player/UnityPlayer$13;

    invoke-direct {v3, p0}, Lcom/unity3d/player/UnityPlayer$13;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    new-instance v4, Lcom/unity3d/player/UnityPlayer$14;

    invoke-direct {v4, p0, v0, v3, v2}, Lcom/unity3d/player/UnityPlayer$14;-><init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/GoogleVrProxy;Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v4}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x4

    const/4 v5, 0x5

    :try_start_2c
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v0, "Timeout while trying to initialize Google VR."

    invoke-static {v5, v0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_39} :catch_3f

    return v1

    :cond_3a
    invoke-virtual {v0}, Lcom/unity3d/player/GoogleVrProxy;->a()Z

    move-result v0

    return v0

    :catch_3f
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UI thread was interrupted while initializing Google VR. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return v1
.end method

.method public injectEvent(Landroid/view/InputEvent;)Z
    .registers 3

    invoke-static {}, Lcom/unity3d/player/n;->c()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeInjectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method

.method protected isFinishing()Z
    .registers 5

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->u:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    instance-of v2, v0, Landroid/app/Activity;

    const/4 v3, 0x0

    if-eqz v2, :cond_16

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->u:Z

    if-eqz v0, :cond_1c

    goto :goto_1d

    :cond_1c
    return v3

    :cond_1d
    :goto_1d
    return v1
.end method

.method protected kill()V
    .registers 2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method protected loadLibrary(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->loadLibraryStatic(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public lowMemory()V
    .registers 2

    invoke-static {}, Lcom/unity3d/player/n;->c()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Lcom/unity3d/player/UnityPlayer$2;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$2;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 3

    invoke-virtual {p0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 3

    invoke-virtual {p0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p0, p3}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 3

    invoke-virtual {p0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method

.method public pause()V
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/GoogleARCoreApi;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/unity3d/player/GoogleARCoreApi;->pauseARCore()V

    :cond_7
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->w:Lcom/unity3d/player/q;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/unity3d/player/q;->a()V

    :cond_e
    invoke-static {}, Lcom/unity3d/player/GoogleVrApi;->b()Lcom/unity3d/player/GoogleVrProxy;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/unity3d/player/GoogleVrProxy;->pauseGvrLayout()V

    :cond_17
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->f()V

    return-void
.end method

.method public quit()V
    .registers 1

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->destroy()V

    return-void
.end method

.method public removeViewFromPlayer(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->s:Landroid/view/SurfaceView;

    invoke-direct {p0, v0, p1}, Lcom/unity3d/player/UnityPlayer;->a(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->s:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    if-eqz p1, :cond_20

    if-eqz v2, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    if-nez v0, :cond_32

    const/4 v0, 0x6

    if-nez p1, :cond_2b

    const-string p1, "removeViewFromPlayer: Failure removing view from hierarchy"

    invoke-static {v0, p1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    :cond_2b
    if-nez v2, :cond_32

    const-string p1, "removeVireFromPlayer: Failure agging old view to hierarchy"

    invoke-static {v0, p1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    :cond_32
    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p2, p1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return-void
.end method

.method protected reportSoftInputSelection(II)V
    .registers 4

    new-instance v0, Lcom/unity3d/player/UnityPlayer$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/unity3d/player/UnityPlayer$12;-><init>(Lcom/unity3d/player/UnityPlayer;II)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer$f;)V

    return-void
.end method

.method protected reportSoftInputStr(Ljava/lang/String;IZ)V
    .registers 5

    const/4 v0, 0x1

    if-ne p2, v0, :cond_6

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->hideSoftInput()V

    :cond_6
    new-instance v0, Lcom/unity3d/player/UnityPlayer$11;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/unity3d/player/UnityPlayer$11;-><init>(Lcom/unity3d/player/UnityPlayer;ZLjava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer$f;)V

    return-void
.end method

.method protected requestUserAuthorization(Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/unity3d/player/j;->c:Z

    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/unity3d/player/j;->d:Lcom/unity3d/player/e;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-interface {v0, v1, p1}, Lcom/unity3d/player/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public resume()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/GoogleARCoreApi;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/unity3d/player/GoogleARCoreApi;->resumeARCore()V

    :cond_7
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->f:Lcom/unity3d/player/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unity3d/player/n;->b(Z)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->w:Lcom/unity3d/player/q;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/unity3d/player/q;->b()V

    :cond_14
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->h()V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeRestartActivityIndicator()V

    invoke-static {}, Lcom/unity3d/player/GoogleVrApi;->b()Lcom/unity3d/player/GoogleVrProxy;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/unity3d/player/GoogleVrProxy;->b()V

    :cond_23
    return-void
.end method

.method protected setCharacterLimit(I)V
    .registers 3

    new-instance v0, Lcom/unity3d/player/UnityPlayer$8;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/UnityPlayer$8;-><init>(Lcom/unity3d/player/UnityPlayer;I)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setClipboardText(Ljava/lang/String;)V
    .registers 3

    const-string v0, "Text"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->l:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method protected setHideInputField(Z)V
    .registers 3

    new-instance v0, Lcom/unity3d/player/UnityPlayer$9;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/UnityPlayer$9;-><init>(Lcom/unity3d/player/UnityPlayer;Z)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setSelection(II)V
    .registers 4

    new-instance v0, Lcom/unity3d/player/UnityPlayer$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/unity3d/player/UnityPlayer$10;-><init>(Lcom/unity3d/player/UnityPlayer;II)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setSoftInputStr(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/unity3d/player/UnityPlayer$7;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/UnityPlayer$7;-><init>(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected showSoftInput(Ljava/lang/String;IZZZZLjava/lang/String;IZ)V
    .registers 23

    new-instance v12, Lcom/unity3d/player/UnityPlayer$4;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/unity3d/player/UnityPlayer$4;-><init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;IZZZZLjava/lang/String;IZ)V

    move-object v0, p0

    invoke-virtual {p0, v12}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected showVideoPlayer(Ljava/lang/String;IIIZII)Z
    .registers 22

    move-object v0, p0

    iget-object v1, v0, Lcom/unity3d/player/UnityPlayer;->w:Lcom/unity3d/player/q;

    if-nez v1, :cond_c

    new-instance v1, Lcom/unity3d/player/q;

    invoke-direct {v1, p0}, Lcom/unity3d/player/q;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iput-object v1, v0, Lcom/unity3d/player/UnityPlayer;->w:Lcom/unity3d/player/q;

    :cond_c
    iget-object v2, v0, Lcom/unity3d/player/UnityPlayer;->w:Lcom/unity3d/player/q;

    iget-object v3, v0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    move/from16 v1, p6

    int-to-long v9, v1

    move/from16 v1, p7

    int-to-long v11, v1

    new-instance v13, Lcom/unity3d/player/UnityPlayer$15;

    invoke-direct {v13, p0}, Lcom/unity3d/player/UnityPlayer$15;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v2 .. v13}, Lcom/unity3d/player/q;->a(Landroid/content/Context;Ljava/lang/String;IIIZJJLcom/unity3d/player/q$a;)Z

    move-result v1

    if-eqz v1, :cond_32

    new-instance v2, Lcom/unity3d/player/UnityPlayer$16;

    invoke-direct {v2, p0}, Lcom/unity3d/player/UnityPlayer$16;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {p0, v2}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    :cond_32
    return v1
.end method

.method protected skipPermissionsDialog()Z
    .registers 3

    sget-boolean v0, Lcom/unity3d/player/j;->c:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/unity3d/player/j;->d:Lcom/unity3d/player/e;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/unity3d/player/e;->a(Landroid/app/Activity;)Z

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public start()V
    .registers 1

    return-void
.end method

.method public stop()V
    .registers 1

    return-void
.end method

.method protected toggleGyroscopeSensor(Z)V
    .registers 5

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->o:Lcom/unity3d/player/UnityPlayer$a;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void

    :cond_19
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->o:Lcom/unity3d/player/UnityPlayer$a;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public windowFocusChanged(Z)V
    .registers 5

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->f:Lcom/unity3d/player/n;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/n;->a(Z)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->f:Lcom/unity3d/player/n;

    invoke-virtual {v0}, Lcom/unity3d/player/n;->e()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->b:Lcom/unity3d/player/k;

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeSoftInputLostFocus()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->reportSoftInputStr(Ljava/lang/String;IZ)V

    :cond_1d
    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/UnityPlayer$e;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer$e;->c()V

    goto :goto_2a

    :cond_25
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/UnityPlayer$e;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer$e;->d()V

    :goto_2a
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->h()V

    return-void
.end method
