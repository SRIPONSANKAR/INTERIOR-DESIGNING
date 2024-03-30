.class final enum Lcom/google/ar/core/u;
.super Ljava/lang/Enum;
.source "InstallService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ar/core/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/ar/core/u;

.field public static final enum b:Lcom/google/ar/core/u;

.field public static final enum c:Lcom/google/ar/core/u;

.field private static final synthetic d:[Lcom/google/ar/core/u;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/google/ar/core/u;

    const/4 v1, 0x0

    const-string v2, "ACCEPTED"

    .line 1
    invoke-direct {v0, v2, v1}, Lcom/google/ar/core/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ar/core/u;->a:Lcom/google/ar/core/u;

    new-instance v0, Lcom/google/ar/core/u;

    const/4 v2, 0x1

    const-string v3, "CANCELLED"

    .line 2
    invoke-direct {v0, v3, v2}, Lcom/google/ar/core/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ar/core/u;->b:Lcom/google/ar/core/u;

    new-instance v0, Lcom/google/ar/core/u;

    const/4 v3, 0x2

    const-string v4, "COMPLETED"

    .line 3
    invoke-direct {v0, v4, v3}, Lcom/google/ar/core/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ar/core/u;->c:Lcom/google/ar/core/u;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/google/ar/core/u;

    sget-object v5, Lcom/google/ar/core/u;->a:Lcom/google/ar/core/u;

    aput-object v5, v4, v1

    sget-object v1, Lcom/google/ar/core/u;->b:Lcom/google/ar/core/u;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/google/ar/core/u;->d:[Lcom/google/ar/core/u;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/ar/core/u;
    .registers 1

    sget-object v0, Lcom/google/ar/core/u;->d:[Lcom/google/ar/core/u;

    .line 1
    invoke-virtual {v0}, [Lcom/google/ar/core/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ar/core/u;

    return-object v0
.end method
