.class final Lcom/google/ar/core/v;
.super Ljava/lang/Object;
.source "InstallService.java"


# instance fields
.field private final a:Ljava/util/Queue;

.field private b:Landroid/content/Context;

.field private c:Lcom/google/a/b/a/a/a/c;

.field private final d:Landroid/content/ServiceConnection;

.field private e:Landroid/content/BroadcastReceiver;

.field private f:Landroid/content/Context;

.field private g:Landroid/content/pm/PackageInstaller;

.field private h:Landroid/content/pm/PackageInstaller$SessionCallback;

.field private volatile i:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Lcom/google/ar/core/v;-><init>()V

    new-instance p1, Ljava/util/ArrayDeque;

    .line 1
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/ar/core/v;->a:Ljava/util/Queue;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/ar/core/v;->i:I

    new-instance p1, Lcom/google/ar/core/w;

    .line 2
    invoke-direct {p1, p0}, Lcom/google/ar/core/w;-><init>(Lcom/google/ar/core/v;)V

    iput-object p1, p0, Lcom/google/ar/core/v;->d:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic e(Lcom/google/ar/core/v;)Landroid/content/pm/PackageInstaller;
    .registers 1

    iget-object p0, p0, Lcom/google/ar/core/v;->g:Landroid/content/pm/PackageInstaller;

    return-object p0
.end method

.method static synthetic f(Lcom/google/ar/core/v;)Lcom/google/a/b/a/a/a/c;
    .registers 1

    iget-object p0, p0, Lcom/google/ar/core/v;->c:Lcom/google/a/b/a/a/a/c;

    return-object p0
.end method

.method static synthetic g(Lcom/google/ar/core/v;Landroid/os/IBinder;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ar/core/v;->l(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic h(Lcom/google/ar/core/v;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/ar/core/v;->m()V

    return-void
.end method

.method static synthetic i(Lcom/google/ar/core/v;Landroid/app/Activity;Lcom/google/ar/core/t;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/google/ar/core/v;->o(Landroid/app/Activity;Lcom/google/ar/core/t;)V

    return-void
.end method

.method static synthetic j(Lcom/google/ar/core/v;Landroid/app/Activity;Landroid/os/Bundle;Lcom/google/ar/core/t;)V
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lcom/google/ar/core/v;->p(Landroid/app/Activity;Landroid/os/Bundle;Lcom/google/ar/core/t;)V

    return-void
.end method

.method static synthetic k()Landroid/os/Bundle;
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package.name"

    const-string v2, "com.google.ar.core"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private declared-synchronized l(Landroid/os/IBinder;)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-static {p1}, Lcom/google/a/b/a/a/a/b;->b(Landroid/os/IBinder;)Lcom/google/a/b/a/a/a/c;

    move-result-object p1

    const-string v0, "ARCore-InstallService"

    const-string v1, "Install service connected"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/google/ar/core/v;->c:Lcom/google/a/b/a/a/a/c;

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/ar/core/v;->i:I

    iget-object p1, p0, Lcom/google/ar/core/v;->a:Ljava/util/Queue;

    .line 3
    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 4
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_29

    goto :goto_17

    :cond_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0

    goto :goto_2d

    :goto_2c
    throw p1

    :goto_2d
    goto :goto_2c
.end method

.method private declared-synchronized m()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "ARCore-InstallService"

    const-string v1, "Install service disconnected"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ar/core/v;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ar/core/v;->c:Lcom/google/a/b/a/a/a/c;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized n(Ljava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ar/core/ae;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/ar/core/v;->i:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_25

    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_23

    if-eqz v1, :cond_1d

    const/4 v0, 0x1

    if-eq v1, v0, :cond_16

    const/4 v0, 0x2

    if-eq v1, v0, :cond_11

    monitor-exit p0

    return-void

    .line 2
    :cond_11
    :try_start_11
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_25

    monitor-exit p0

    return-void

    .line 1
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/google/ar/core/v;->a:Ljava/util/Queue;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_25

    monitor-exit p0

    return-void

    .line 2
    :cond_1d
    :try_start_1d
    new-instance p1, Lcom/google/ar/core/ae;

    .line 4
    invoke-direct {p1}, Lcom/google/ar/core/ae;-><init>()V

    throw p1

    :cond_23
    const/4 p1, 0x0

    .line 1
    throw p1
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static o(Landroid/app/Activity;Lcom/google/ar/core/t;)V
    .registers 8

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.google.ar.core"

    .line 1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/google/ar/core/k;->a()Lcom/google/ar/core/k;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    .line 3
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 4
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_1f

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, "com.sec.android.app.samsungapps.MainForChina"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    xor-int/2addr v2, v4

    iput-boolean v2, v1, Lcom/google/ar/core/k;->b:Z

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_45
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_45} :catch_46

    return-void

    :catch_46
    move-exception p0

    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v1, "Failed to launch installer."

    .line 6
    invoke-direct {v0, v1, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/google/ar/core/t;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method private static p(Landroid/app/Activity;Landroid/os/Bundle;Lcom/google/ar/core/t;)V
    .registers 10

    const-string v0, "resolution.intent"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    if-eqz p1, :cond_2d

    .line 2
    :try_start_a
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 3
    invoke-direct {v3, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x4d2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 4
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_20
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_a .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p0

    .line 7
    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Installation Intent failed"

    .line 5
    invoke-direct {p1, v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p1}, Lcom/google/ar/core/t;->b(Ljava/lang/Exception;)V

    return-void

    :cond_2d
    const-string p0, "ARCore-InstallService"

    const-string p1, "Did not get pending intent."

    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    const-string p1, "Installation intent failed to unparcel."

    .line 7
    invoke-direct {p0, p1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/ar/core/t;->b(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/ar/core/v;->b:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.play.core.install.BIND_INSTALL_SERVICE"

    .line 1
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ar/core/v;->d:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    .line 1
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/ar/core/v;->i:I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_31

    monitor-exit p0

    return-void

    :cond_1e
    :try_start_1e
    iput v2, p0, Lcom/google/ar/core/v;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ar/core/v;->b:Landroid/content/Context;

    const-string v0, "ARCore-InstallService"

    const-string v1, "bindService returned false."

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/ar/core/v;->d:Landroid/content/ServiceConnection;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_31

    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Landroid/content/Context;Lcom/google/ar/core/i;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/ar/core/y;

    .line 1
    invoke-direct {v0, p0, p1, p2}, Lcom/google/ar/core/y;-><init>(Lcom/google/ar/core/v;Landroid/content/Context;Lcom/google/ar/core/i;)V

    invoke-direct {p0, v0}, Lcom/google/ar/core/v;->n(Ljava/lang/Runnable;)V
    :try_end_9
    .catch Lcom/google/ar/core/ae; {:try_start_1 .. :try_end_9} :catch_d
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    goto :goto_1b

    :catch_d
    :try_start_d
    const-string p1, "ARCore-InstallService"

    const-string v0, "Play Store install service could not be bound."

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {p2, p1}, Lcom/google/ar/core/i;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_b

    monitor-exit p0

    return-void

    :goto_1b
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/ar/core/v;->i:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    if-eq v1, v0, :cond_f

    const/4 v3, 0x2

    if-eq v1, v3, :cond_f

    goto :goto_1a

    .line 1
    :cond_f
    iget-object v1, p0, Lcom/google/ar/core/v;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/ar/core/v;->d:Landroid/content/ServiceConnection;

    .line 2
    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lcom/google/ar/core/v;->b:Landroid/content/Context;

    iput v0, p0, Lcom/google/ar/core/v;->i:I

    .line 0
    :goto_1a
    iget-object v0, p0, Lcom/google/ar/core/v;->e:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/google/ar/core/v;->f:Landroid/content/Context;

    .line 3
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_23
    iget-object v0, p0, Lcom/google/ar/core/v;->h:Landroid/content/pm/PackageInstaller$SessionCallback;

    if-eqz v0, :cond_30

    iget-object v1, p0, Lcom/google/ar/core/v;->g:Landroid/content/pm/PackageInstaller;

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageInstaller;->unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    iput-object v2, p0, Lcom/google/ar/core/v;->h:Landroid/content/pm/PackageInstaller$SessionCallback;
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_33

    monitor-exit p0

    return-void

    :cond_30
    monitor-exit p0

    return-void

    .line 1
    :cond_32
    :try_start_32
    throw v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(Landroid/app/Activity;Lcom/google/ar/core/t;)V
    .registers 6

    iget-object v0, p0, Lcom/google/ar/core/v;->h:Landroid/content/pm/PackageInstaller$SessionCallback;

    if-nez v0, :cond_1a

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ar/core/v;->g:Landroid/content/pm/PackageInstaller;

    .line 2
    new-instance v0, Lcom/google/ar/core/z;

    invoke-direct {v0, p0, p2}, Lcom/google/ar/core/z;-><init>(Lcom/google/ar/core/v;Lcom/google/ar/core/t;)V

    iput-object v0, p0, Lcom/google/ar/core/v;->h:Landroid/content/pm/PackageInstaller$SessionCallback;

    iget-object v1, p0, Lcom/google/ar/core/v;->g:Landroid/content/pm/PackageInstaller;

    .line 3
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    :cond_1a
    iget-object v0, p0, Lcom/google/ar/core/v;->e:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_31

    new-instance v0, Lcom/google/ar/core/aa;

    .line 4
    invoke-direct {v0, p2}, Lcom/google/ar/core/aa;-><init>(Lcom/google/ar/core/t;)V

    iput-object v0, p0, Lcom/google/ar/core/v;->e:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/google/ar/core/v;->f:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.play.core.install.ACTION_INSTALL_STATUS"

    .line 5
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_31
    :try_start_31
    new-instance v0, Lcom/google/ar/core/ad;

    .line 6
    invoke-direct {v0, p0, p1, p2}, Lcom/google/ar/core/ad;-><init>(Lcom/google/ar/core/v;Landroid/app/Activity;Lcom/google/ar/core/t;)V

    invoke-direct {p0, v0}, Lcom/google/ar/core/v;->n(Ljava/lang/Runnable;)V
    :try_end_39
    .catch Lcom/google/ar/core/ae; {:try_start_31 .. :try_end_39} :catch_3a

    return-void

    :catch_3a
    const-string v0, "ARCore-InstallService"

    const-string v1, "requestInstall bind failed, launching fullscreen."

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {p1, p2}, Lcom/google/ar/core/v;->o(Landroid/app/Activity;Lcom/google/ar/core/t;)V

    return-void
.end method
