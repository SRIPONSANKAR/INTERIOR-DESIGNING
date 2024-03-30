.class final Lcom/google/ar/core/s;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InstallActivity.java"


# instance fields
.field final synthetic a:Lcom/google/ar/core/InstallActivity;


# direct methods
.method constructor <init>(Lcom/google/ar/core/InstallActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/ar/core/s;->a:Lcom/google/ar/core/InstallActivity;

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/google/ar/core/s;->a:Lcom/google/ar/core/InstallActivity;

    .line 1
    invoke-static {p1}, Lcom/google/ar/core/InstallActivity;->access$300(Lcom/google/ar/core/InstallActivity;)V

    return-void
.end method
