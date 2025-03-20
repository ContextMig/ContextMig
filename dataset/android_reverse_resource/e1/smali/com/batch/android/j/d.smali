.class public final enum Lcom/batch/android/j/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/batch/android/j/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/batch/android/j/d;

.field public static final enum b:Lcom/batch/android/j/d;

.field public static final enum c:Lcom/batch/android/j/d;

.field private static final synthetic e:[Lcom/batch/android/j/d;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/batch/android/j/d;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v2, v2}, Lcom/batch/android/j/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/j/d;->a:Lcom/batch/android/j/d;

    .line 18
    new-instance v0, Lcom/batch/android/j/d;

    const-string v1, "DB_ONLY"

    invoke-direct {v0, v1, v3, v3}, Lcom/batch/android/j/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/j/d;->b:Lcom/batch/android/j/d;

    .line 23
    new-instance v0, Lcom/batch/android/j/d;

    const-string v1, "ON"

    invoke-direct {v0, v1, v4, v4}, Lcom/batch/android/j/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/j/d;->c:Lcom/batch/android/j/d;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/batch/android/j/d;

    sget-object v1, Lcom/batch/android/j/d;->a:Lcom/batch/android/j/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/batch/android/j/d;->b:Lcom/batch/android/j/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/batch/android/j/d;->c:Lcom/batch/android/j/d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/batch/android/j/d;->e:[Lcom/batch/android/j/d;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/batch/android/j/d;->d:I

    .line 32
    return-void
.end method

.method public static a(I)Lcom/batch/android/j/d;
    .locals 5

    .prologue
    .line 49
    invoke-static {}, Lcom/batch/android/j/d;->values()[Lcom/batch/android/j/d;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 51
    invoke-virtual {v0}, Lcom/batch/android/j/d;->a()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 57
    :goto_1
    return-object v0

    .line 49
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/j/d;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/batch/android/j/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/batch/android/j/d;

    return-object v0
.end method

.method public static values()[Lcom/batch/android/j/d;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/batch/android/j/d;->e:[Lcom/batch/android/j/d;

    invoke-virtual {v0}, [Lcom/batch/android/j/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/j/d;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/batch/android/j/d;->d:I

    return v0
.end method
