.class final Lcom/google/ar/core/k;
.super Lcom/google/ar/core/ArCoreApk;
.source "ArCoreApkImpl.java"


# static fields
.field private static final c:Lcom/google/ar/core/k;


# instance fields
.field a:Ljava/lang/Exception;

.field b:Z

.field private d:Z

.field private e:I

.field private f:J

.field private g:Lcom/google/ar/core/ArCoreApk$Availability;

.field private h:Z

.field private i:Lcom/google/ar/core/v;

.field private j:Z

.field private k:Z

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/ar/core/k;

    .line 1
    invoke-direct {v0}, Lcom/google/ar/core/k;-><init>()V

    sput-object v0, Lcom/google/ar/core/k;->c:Lcom/google/ar/core/k;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/ar/core/ArCoreApk;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ar/core/k;->b:Z

    return-void
.end method

.method public static a()Lcom/google/ar/core/k;
    .registers 1

    sget-object v0, Lcom/google/ar/core/k;->c:Lcom/google/ar/core/k;

    return-object v0
.end method

.method static synthetic e(Lcom/google/ar/core/k;Lcom/google/ar/core/ArCoreApk$Availability;)V
    .registers 2

    iput-object p1, p0, Lcom/google/ar/core/k;->g:Lcom/google/ar/core/ArCoreApk$Availability;

    return-void
.end method

.method static synthetic f(Lcom/google/ar/core/k;)V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ar/core/k;->h:Z

    return-void
.end method

.method private static g(Landroid/content/Context;)I
    .registers 4

    const/4 v0, -0x1

    .line 1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.google.ar.core"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2
    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-nez v1, :cond_1c

    .line 3
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_1b

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length p0, p0
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_17} :catch_1d

    if-eqz p0, :cond_1b

    const/4 v1, 0x0

    goto :goto_1c

    :cond_1b
    return v0

    :cond_1c
    :goto_1c
    return v1

    :catch_1d
    return v0
.end method

.method private final declared-synchronized h(Landroid/content/Context;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/ar/core/k;->j:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a0

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 1
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_a0

    const/16 v1, 0x80

    .line 3
    :try_start_11
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_17} :catch_97
    .catchall {:try_start_11 .. :try_end_17} :catchall_a0

    :try_start_17
    const-string v2, "com.google.ar.core"

    .line 5
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8f

    const-string v2, "com.google.ar.core"

    .line 6
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "required"

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/ar/core/k;->k:Z

    const-string v2, "com.google.ar.core.min_apk_version"

    .line 8
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_87

    const-string v2, "com.google.ar.core.min_apk_version"

    .line 9
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/ar/core/k;->l:I
    :try_end_40
    .catchall {:try_start_17 .. :try_end_40} :catchall_a0

    const/4 v1, 0x1

    .line 10
    :try_start_41
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const-class v0, Lcom/google/ar/core/InstallActivity;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 12
    array-length v2, p1

    const/4 v3, 0x0

    :goto_4f
    if-ge v3, v2, :cond_62

    aget-object v4, p1, v3

    .line 13
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_59
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_41 .. :try_end_59} :catch_7e
    .catchall {:try_start_41 .. :try_end_59} :catchall_a0

    if-eqz v4, :cond_5f

    :try_start_5b
    iput-boolean v1, p0, Lcom/google/ar/core/k;->j:Z
    :try_end_5d
    .catchall {:try_start_5b .. :try_end_5d} :catchall_a0

    monitor-exit p0

    return-void

    :cond_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 15
    :cond_62
    :try_start_62
    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    const-string v1, "Application manifest must contain activity "

    .line 14
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_75

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7a

    :cond_75
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7a
    invoke-direct {p1, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_62 .. :try_end_7e} :catch_7e
    .catchall {:try_start_62 .. :try_end_7e} :catchall_a0

    :catch_7e
    move-exception p1

    .line 16
    :try_start_7f
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v1, "Could not load application package info"

    .line 15
    invoke-direct {v0, v1, p1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 17
    :cond_87
    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Application manifest must contain meta-data com.google.ar.core.min_apk_version"

    .line 16
    invoke-direct {p1, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_8f
    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Application manifest must contain meta-data com.google.ar.core"

    .line 17
    invoke-direct {p1, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_97
    move-exception p1

    .line 13
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v1, "Could not load application package metadata"

    .line 4
    invoke-direct {v0, v1, p1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_a0
    .catchall {:try_start_7f .. :try_end_a0} :catchall_a0

    :catchall_a0
    move-exception p1

    monitor-exit p0

    goto :goto_a4

    :goto_a3
    throw p1

    :goto_a4
    goto :goto_a3
.end method

.method private static i()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private final j(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ar/core/k;->h(Landroid/content/Context;)V

    iget-boolean p1, p0, Lcom/google/ar/core/k;->k:Z

    return p1
.end method

.method private static final k(Landroid/app/Activity;)Lcom/google/ar/core/ArCoreApk$InstallStatus;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;,
            Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;
        }
    .end annotation

    const-string v0, "ARCore-ArCoreApk"

    .line 1
    invoke-static {p0}, Lcom/google/ar/core/ah;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_24

    :try_start_8
    const-string v2, "Starting setup activity"

    .line 2
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V

    .line 4
    sget-object p0, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALL_REQUESTED:Lcom/google/ar/core/ArCoreApk$InstallStatus;
    :try_end_1b
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_8 .. :try_end_1b} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    move-exception p0

    goto :goto_1f

    :catch_1e
    move-exception p0

    :goto_1f
    const-string v1, "Setup activity launch failed"

    .line 5
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :cond_24
    sget-object p0, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALLED:Lcom/google/ar/core/ArCoreApk$InstallStatus;

    return-object p0
.end method


# virtual methods
.method final declared-synchronized b(Landroid/content/Context;)Lcom/google/ar/core/v;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ar/core/k;->i:Lcom/google/ar/core/v;

    if-nez v0, :cond_14

    new-instance v0, Lcom/google/ar/core/v;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, v1}, Lcom/google/ar/core/v;-><init>([B)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/ar/core/v;->a(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ar/core/k;->i:Lcom/google/ar/core/v;

    :cond_14
    iget-object p1, p0, Lcom/google/ar/core/k;->i:Lcom/google/ar/core/v;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object p1

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized c()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ar/core/k;->a:Ljava/lang/Exception;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    iput v1, p0, Lcom/google/ar/core/k;->e:I

    :cond_8
    iput-boolean v1, p0, Lcom/google/ar/core/k;->d:Z

    iget-object v0, p0, Lcom/google/ar/core/k;->i:Lcom/google/ar/core/v;

    if-eqz v0, :cond_16

    .line 1
    invoke-virtual {v0}, Lcom/google/ar/core/v;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ar/core/k;->i:Lcom/google/ar/core/v;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_18

    monitor-exit p0

    return-void

    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final checkAvailability(Landroid/content/Context;)Lcom/google/ar/core/ArCoreApk$Availability;
    .registers 5

    invoke-static {}, Lcom/google/ar/core/k;->i()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1
    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->UNSUPPORTED_DEVICE_NOT_CAPABLE:Lcom/google/ar/core/ArCoreApk$Availability;

    return-object p1

    .line 2
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/google/ar/core/k;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3
    invoke-virtual {p0}, Lcom/google/ar/core/k;->c()V
    :try_end_12
    .catch Lcom/google/ar/core/exceptions/FatalException; {:try_start_9 .. :try_end_12} :catch_83

    .line 4
    :try_start_12
    invoke-static {p1}, Lcom/google/ar/core/ah;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 5
    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_APK_TOO_OLD:Lcom/google/ar/core/ArCoreApk$Availability;

    goto :goto_23

    .line 6
    :cond_1b
    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;
    :try_end_1d
    .catch Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException; {:try_start_12 .. :try_end_1d} :catch_21
    .catch Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException; {:try_start_12 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_1d} :catch_1e

    goto :goto_23

    .line 7
    :catch_1e
    :try_start_1e
    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    goto :goto_23

    .line 8
    :catch_21
    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->UNSUPPORTED_DEVICE_NOT_CAPABLE:Lcom/google/ar/core/ArCoreApk$Availability;
    :try_end_23
    .catch Lcom/google/ar/core/exceptions/FatalException; {:try_start_1e .. :try_end_23} :catch_83

    :goto_23
    return-object p1

    .line 6
    :cond_24
    monitor-enter p0

    :try_start_25
    iget-object v0, p0, Lcom/google/ar/core/k;->g:Lcom/google/ar/core/ArCoreApk$Availability;

    if-eqz v0, :cond_2f

    .line 11
    invoke-virtual {v0}, Lcom/google/ar/core/ArCoreApk$Availability;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_67

    :cond_2f
    iget-boolean v0, p0, Lcom/google/ar/core/k;->h:Z

    if-nez v0, :cond_67

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ar/core/k;->h:Z

    new-instance v0, Lcom/google/ar/core/j;

    .line 12
    invoke-direct {v0, p0}, Lcom/google/ar/core/j;-><init>(Lcom/google/ar/core/k;)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/ar/core/k;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 19
    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {v0, p1}, Lcom/google/ar/core/i;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V

    goto :goto_67

    .line 14
    :cond_47
    invoke-static {p1}, Lcom/google/ar/core/k;->g(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_54

    .line 15
    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_APK_TOO_OLD:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {v0, p1}, Lcom/google/ar/core/i;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V

    goto :goto_67

    .line 16
    :cond_54
    invoke-direct {p0, p1}, Lcom/google/ar/core/k;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 17
    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_NOT_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {v0, p1}, Lcom/google/ar/core/i;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V

    goto :goto_67

    .line 18
    :cond_60
    invoke-virtual {p0, p1}, Lcom/google/ar/core/k;->b(Landroid/content/Context;)Lcom/google/ar/core/v;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/ar/core/v;->b(Landroid/content/Context;Lcom/google/ar/core/i;)V

    .line 19
    :cond_67
    :goto_67
    iget-object p1, p0, Lcom/google/ar/core/k;->g:Lcom/google/ar/core/ArCoreApk$Availability;

    if-eqz p1, :cond_6d

    .line 20
    monitor-exit p0

    return-object p1

    :cond_6d
    iget-boolean p1, p0, Lcom/google/ar/core/k;->h:Z

    if-eqz p1, :cond_75

    .line 21
    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_CHECKING:Lcom/google/ar/core/ArCoreApk$Availability;

    monitor-exit p0

    return-object p1

    :cond_75
    const-string p1, "ARCore-ArCoreApk"

    const-string v0, "request not running but result is null?"

    .line 22
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    monitor-exit p0

    return-object p1

    :catchall_80
    move-exception p1

    .line 24
    monitor-exit p0
    :try_end_82
    .catchall {:try_start_25 .. :try_end_82} :catchall_80

    throw p1

    :catch_83
    move-exception p1

    const-string v0, "ARCore-ArCoreApk"

    const-string v1, "Error while checking app details and ARCore status"

    .line 9
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    return-object p1
.end method

.method final d(Landroid/content/Context;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ar/core/k;->h(Landroid/content/Context;)V

    .line 2
    invoke-static {p1}, Lcom/google/ar/core/k;->g(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 3
    invoke-static {p1}, Lcom/google/ar/core/k;->g(Landroid/content/Context;)I

    move-result p1

    iget v0, p0, Lcom/google/ar/core/k;->l:I

    if-lt p1, v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p1, 0x0

    return p1

    :cond_14
    :goto_14
    const/4 p1, 0x1

    return p1
.end method

.method public final requestInstall(Landroid/app/Activity;Z)Lcom/google/ar/core/ArCoreApk$InstallStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;,
            Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ar/core/k;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/ar/core/ArCoreApk$InstallBehavior;->REQUIRED:Lcom/google/ar/core/ArCoreApk$InstallBehavior;

    goto :goto_b

    :cond_9
    sget-object v0, Lcom/google/ar/core/ArCoreApk$InstallBehavior;->OPTIONAL:Lcom/google/ar/core/ArCoreApk$InstallBehavior;

    .line 2
    :goto_b
    invoke-direct {p0, p1}, Lcom/google/ar/core/k;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3
    sget-object v1, Lcom/google/ar/core/ArCoreApk$UserMessageType;->APPLICATION:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    goto :goto_16

    .line 4
    :cond_14
    sget-object v1, Lcom/google/ar/core/ArCoreApk$UserMessageType;->USER_ALREADY_INFORMED:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    .line 5
    :goto_16
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/ar/core/ArCoreApk;->requestInstall(Landroid/app/Activity;ZLcom/google/ar/core/ArCoreApk$InstallBehavior;Lcom/google/ar/core/ArCoreApk$UserMessageType;)Lcom/google/ar/core/ArCoreApk$InstallStatus;

    move-result-object p1

    return-object p1
.end method

.method public final requestInstall(Landroid/app/Activity;ZLcom/google/ar/core/ArCoreApk$InstallBehavior;Lcom/google/ar/core/ArCoreApk$UserMessageType;)Lcom/google/ar/core/ArCoreApk$InstallStatus;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;,
            Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;
        }
    .end annotation

    invoke-static {}, Lcom/google/ar/core/k;->i()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/ar/core/k;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 8
    invoke-virtual {p0}, Lcom/google/ar/core/k;->c()V

    .line 9
    invoke-static {p1}, Lcom/google/ar/core/k;->k(Landroid/app/Activity;)Lcom/google/ar/core/ArCoreApk$InstallStatus;

    move-result-object p1

    return-object p1

    :cond_14
    iget-boolean v0, p0, Lcom/google/ar/core/k;->d:Z

    if-eqz v0, :cond_1b

    .line 10
    sget-object p1, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALL_REQUESTED:Lcom/google/ar/core/ArCoreApk$InstallStatus;

    return-object p1

    :cond_1b
    iget-object v0, p0, Lcom/google/ar/core/k;->a:Ljava/lang/Exception;

    if-eqz v0, :cond_49

    if-eqz p2, :cond_2c

    const-string p2, "ARCore-ArCoreApk"

    const-string v1, "Clearing previous failure: "

    .line 11
    invoke-static {p2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/ar/core/k;->a:Ljava/lang/Exception;

    goto :goto_49

    .line 19
    :cond_2c
    instance-of p1, v0, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;

    if-nez p1, :cond_46

    .line 21
    instance-of p1, v0, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

    if-nez p1, :cond_43

    .line 23
    instance-of p1, v0, Ljava/lang/RuntimeException;

    if-eqz p1, :cond_3b

    .line 24
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 22
    :cond_3b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception type"

    .line 25
    invoke-direct {p1, p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 22
    :cond_43
    check-cast v0, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

    throw v0

    .line 20
    :cond_46
    check-cast v0, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;

    throw v0

    .line 12
    :cond_49
    :goto_49
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/ar/core/k;->f:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long p2, v2, v4

    if-lez p2, :cond_5a

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/ar/core/k;->e:I

    :cond_5a
    iget p2, p0, Lcom/google/ar/core/k;->e:I

    const/4 v2, 0x1

    add-int/2addr p2, v2

    iput p2, p0, Lcom/google/ar/core/k;->e:I

    iput-wide v0, p0, Lcom/google/ar/core/k;->f:J

    const/4 v0, 0x2

    if-gt p2, v0, :cond_89

    .line 13
    :try_start_65
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/google/ar/core/InstallActivity;

    .line 14
    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "message"

    .line 15
    invoke-virtual {p2, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p2

    const-string p4, "behavior"

    .line 16
    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p2

    .line 14
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_7b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_65 .. :try_end_7b} :catch_80

    iput-boolean v2, p0, Lcom/google/ar/core/k;->d:Z

    .line 18
    sget-object p1, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALL_REQUESTED:Lcom/google/ar/core/ArCoreApk$InstallStatus;

    return-object p1

    :catch_80
    move-exception p1

    .line 20
    new-instance p2, Lcom/google/ar/core/exceptions/FatalException;

    const-string p3, "Failed to launch InstallActivity"

    .line 17
    invoke-direct {p2, p3, p1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 12
    :cond_89
    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    const-string p2, "Requesting ARCore installation too rapidly."

    .line 13
    invoke-direct {p1, p2}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 0
    :cond_91
    new-instance p1, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;

    .line 6
    invoke-direct {p1}, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;-><init>()V

    throw p1
.end method
