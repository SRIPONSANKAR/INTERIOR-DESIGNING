.class public final enum Lcom/google/ar/core/Config$PlaneFindingMode;
.super Ljava/lang/Enum;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ar/core/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaneFindingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ar/core/Config$PlaneFindingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/Config$PlaneFindingMode;

.field public static final enum DISABLED:Lcom/google/ar/core/Config$PlaneFindingMode;

.field public static final enum HORIZONTAL:Lcom/google/ar/core/Config$PlaneFindingMode;

.field public static final enum HORIZONTAL_AND_VERTICAL:Lcom/google/ar/core/Config$PlaneFindingMode;

.field public static final enum VERTICAL:Lcom/google/ar/core/Config$PlaneFindingMode;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/Config$PlaneFindingMode;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/ar/core/Config$PlaneFindingMode;

    sget-object v1, Lcom/google/ar/core/Config$PlaneFindingMode;->DISABLED:Lcom/google/ar/core/Config$PlaneFindingMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ar/core/Config$PlaneFindingMode;->HORIZONTAL:Lcom/google/ar/core/Config$PlaneFindingMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ar/core/Config$PlaneFindingMode;->VERTICAL:Lcom/google/ar/core/Config$PlaneFindingMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ar/core/Config$PlaneFindingMode;->HORIZONTAL_AND_VERTICAL:Lcom/google/ar/core/Config$PlaneFindingMode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/ar/core/Config$PlaneFindingMode;

    const/4 v1, 0x0

    const-string v2, "DISABLED"

    .line 1
    invoke-direct {v0, v2, v1, v1}, Lcom/google/ar/core/Config$PlaneFindingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Config$PlaneFindingMode;->DISABLED:Lcom/google/ar/core/Config$PlaneFindingMode;

    new-instance v0, Lcom/google/ar/core/Config$PlaneFindingMode;

    const/4 v1, 0x1

    const-string v2, "HORIZONTAL"

    .line 2
    invoke-direct {v0, v2, v1, v1}, Lcom/google/ar/core/Config$PlaneFindingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Config$PlaneFindingMode;->HORIZONTAL:Lcom/google/ar/core/Config$PlaneFindingMode;

    new-instance v0, Lcom/google/ar/core/Config$PlaneFindingMode;

    const/4 v1, 0x2

    const-string v2, "VERTICAL"

    .line 3
    invoke-direct {v0, v2, v1, v1}, Lcom/google/ar/core/Config$PlaneFindingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Config$PlaneFindingMode;->VERTICAL:Lcom/google/ar/core/Config$PlaneFindingMode;

    new-instance v0, Lcom/google/ar/core/Config$PlaneFindingMode;

    const/4 v1, 0x3

    const-string v2, "HORIZONTAL_AND_VERTICAL"

    .line 4
    invoke-direct {v0, v2, v1, v1}, Lcom/google/ar/core/Config$PlaneFindingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Config$PlaneFindingMode;->HORIZONTAL_AND_VERTICAL:Lcom/google/ar/core/Config$PlaneFindingMode;

    .line 5
    invoke-static {}, Lcom/google/ar/core/Config$PlaneFindingMode;->$values()[Lcom/google/ar/core/Config$PlaneFindingMode;

    move-result-object v0

    sput-object v0, Lcom/google/ar/core/Config$PlaneFindingMode;->$VALUES:[Lcom/google/ar/core/Config$PlaneFindingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/ar/core/Config$PlaneFindingMode;->nativeCode:I

    return-void
.end method

.method static forNumber(I)Lcom/google/ar/core/Config$PlaneFindingMode;
    .registers 6

    .line 1
    invoke-static {}, Lcom/google/ar/core/Config$PlaneFindingMode;->values()[Lcom/google/ar/core/Config$PlaneFindingMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcom/google/ar/core/Config$PlaneFindingMode;->nativeCode:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3f

    .line 3
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected value for native PlaneFindingMode, value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto :goto_2c

    :goto_2b
    throw v0

    :goto_2c
    goto :goto_2b
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/Config$PlaneFindingMode;
    .registers 2

    const-class v0, Lcom/google/ar/core/Config$PlaneFindingMode;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/ar/core/Config$PlaneFindingMode;

    return-object p0
.end method

.method public static values()[Lcom/google/ar/core/Config$PlaneFindingMode;
    .registers 1

    sget-object v0, Lcom/google/ar/core/Config$PlaneFindingMode;->$VALUES:[Lcom/google/ar/core/Config$PlaneFindingMode;

    .line 1
    invoke-virtual {v0}, [Lcom/google/ar/core/Config$PlaneFindingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ar/core/Config$PlaneFindingMode;

    return-object v0
.end method