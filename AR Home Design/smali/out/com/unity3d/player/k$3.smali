.class final Lcom/unity3d/player/k$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/k;->createSoftInputView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/k;


# direct methods
.method constructor <init>(Lcom/unity3d/player/k;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/player/k$3;->a:Lcom/unity3d/player/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_d

    iget-object p2, p0, Lcom/unity3d/player/k$3;->a:Lcom/unity3d/player/k;

    invoke-static {p2}, Lcom/unity3d/player/k;->a(Lcom/unity3d/player/k;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/unity3d/player/k;->a(Lcom/unity3d/player/k;Ljava/lang/String;Z)V

    :cond_d
    return p1
.end method
