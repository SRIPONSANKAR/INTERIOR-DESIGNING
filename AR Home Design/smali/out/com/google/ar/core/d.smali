.class final enum Lcom/google/ar/core/d;
.super Lcom/google/ar/core/ArCoreApk$Availability;
.source "ArCoreApk.java"


# direct methods
.method constructor <init>()V
    .registers 4

    const/4 v0, 0x2

    const-string v1, "UNKNOWN_TIMED_OUT"

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v1, v0, v0, v2}, Lcom/google/ar/core/ArCoreApk$Availability;-><init>(Ljava/lang/String;IILcom/google/ar/core/a;)V

    return-void
.end method


# virtual methods
.method public final isUnknown()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method