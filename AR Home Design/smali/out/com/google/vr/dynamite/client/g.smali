.class final Lcom/google/vr/dynamite/client/g;
.super Ljava/lang/Object;
.source "TargetLibraryInfo.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/vr/dynamite/client/g;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/vr/dynamite/client/g;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/vr/dynamite/client/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/vr/dynamite/client/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 2
    check-cast p1, Lcom/google/vr/dynamite/client/g;

    iget-object v1, p0, Lcom/google/vr/dynamite/client/g;->a:Ljava/lang/String;

    .line 3
    iget-object v3, p1, Lcom/google/vr/dynamite/client/g;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/vr/dynamite/client/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/google/vr/dynamite/client/g;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/vr/dynamite/client/g;->b:Ljava/lang/String;

    .line 4
    invoke-static {v1, p1}, Lcom/google/vr/dynamite/client/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    return v0

    :cond_20
    return v2
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/vr/dynamite/client/g;->a:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Lcom/google/vr/dynamite/client/f;->b(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/google/vr/dynamite/client/g;->b:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Lcom/google/vr/dynamite/client/f;->b(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[packageName="

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/vr/dynamite/client/g;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",libraryName="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/vr/dynamite/client/g;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
