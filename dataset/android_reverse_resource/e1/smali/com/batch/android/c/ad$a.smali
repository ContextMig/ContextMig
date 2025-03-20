.class public final enum Lcom/batch/android/c/ad$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/c/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/batch/android/c/ad$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/batch/android/c/ad$a;

.field public static final enum b:Lcom/batch/android/c/ad$a;

.field public static final enum c:Lcom/batch/android/c/ad$a;

.field private static final synthetic e:[Lcom/batch/android/c/ad$a;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 345
    new-instance v0, Lcom/batch/android/c/ad$a;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2, v4}, Lcom/batch/android/c/ad$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/c/ad$a;->a:Lcom/batch/android/c/ad$a;

    .line 350
    new-instance v0, Lcom/batch/android/c/ad$a;

    const-string v1, "VALUE"

    invoke-direct {v0, v1, v3, v2}, Lcom/batch/android/c/ad$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/c/ad$a;->b:Lcom/batch/android/c/ad$a;

    .line 355
    new-instance v0, Lcom/batch/android/c/ad$a;

    const-string v1, "EACH"

    invoke-direct {v0, v1, v4, v3}, Lcom/batch/android/c/ad$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/c/ad$a;->c:Lcom/batch/android/c/ad$a;

    .line 340
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/batch/android/c/ad$a;

    sget-object v1, Lcom/batch/android/c/ad$a;->a:Lcom/batch/android/c/ad$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/batch/android/c/ad$a;->b:Lcom/batch/android/c/ad$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/batch/android/c/ad$a;->c:Lcom/batch/android/c/ad$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/batch/android/c/ad$a;->e:[Lcom/batch/android/c/ad$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 369
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 370
    iput p3, p0, Lcom/batch/android/c/ad$a;->d:I

    .line 371
    return-void
.end method

.method public static a(I)Lcom/batch/android/c/ad$a;
    .locals 5

    .prologue
    .line 391
    invoke-static {}, Lcom/batch/android/c/ad$a;->values()[Lcom/batch/android/c/ad$a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 393
    invoke-virtual {v0}, Lcom/batch/android/c/ad$a;->a()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 399
    :goto_1
    return-object v0

    .line 391
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 399
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/c/ad$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 340
    const-class v0, Lcom/batch/android/c/ad$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/batch/android/c/ad$a;

    return-object v0
.end method

.method public static values()[Lcom/batch/android/c/ad$a;
    .locals 1

    .prologue
    .line 340
    sget-object v0, Lcom/batch/android/c/ad$a;->e:[Lcom/batch/android/c/ad$a;

    invoke-virtual {v0}, [Lcom/batch/android/c/ad$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/c/ad$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/batch/android/c/ad$a;->d:I

    return v0
.end method
