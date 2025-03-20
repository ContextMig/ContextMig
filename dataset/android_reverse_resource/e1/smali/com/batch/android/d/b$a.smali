.class public final enum Lcom/batch/android/d/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/batch/android/d/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/batch/android/d/b$a;

.field public static final enum b:Lcom/batch/android/d/b$a;

.field public static final enum c:Lcom/batch/android/d/b$a;

.field public static final enum d:Lcom/batch/android/d/b$a;

.field private static final synthetic f:[Lcom/batch/android/d/b$a;


# instance fields
.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 217
    new-instance v0, Lcom/batch/android/d/b$a;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v2, v2}, Lcom/batch/android/d/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/d/b$a;->a:Lcom/batch/android/d/b$a;

    .line 222
    new-instance v0, Lcom/batch/android/d/b$a;

    const-string v1, "SENDING"

    invoke-direct {v0, v1, v3, v3}, Lcom/batch/android/d/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/d/b$a;->b:Lcom/batch/android/d/b$a;

    .line 227
    new-instance v0, Lcom/batch/android/d/b$a;

    const-string v1, "SENT"

    invoke-direct {v0, v1, v4, v4}, Lcom/batch/android/d/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/d/b$a;->c:Lcom/batch/android/d/b$a;

    .line 232
    new-instance v0, Lcom/batch/android/d/b$a;

    const-string v1, "OLD"

    invoke-direct {v0, v1, v5, v5}, Lcom/batch/android/d/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/d/b$a;->d:Lcom/batch/android/d/b$a;

    .line 212
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/batch/android/d/b$a;

    sget-object v1, Lcom/batch/android/d/b$a;->a:Lcom/batch/android/d/b$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/batch/android/d/b$a;->b:Lcom/batch/android/d/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/batch/android/d/b$a;->c:Lcom/batch/android/d/b$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/batch/android/d/b$a;->d:Lcom/batch/android/d/b$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/batch/android/d/b$a;->f:[Lcom/batch/android/d/b$a;

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
    .line 239
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 240
    iput p3, p0, Lcom/batch/android/d/b$a;->e:I

    .line 241
    return-void
.end method

.method public static a(I)Lcom/batch/android/d/b$a;
    .locals 5

    .prologue
    .line 252
    invoke-static {}, Lcom/batch/android/d/b$a;->values()[Lcom/batch/android/d/b$a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 254
    invoke-virtual {v0}, Lcom/batch/android/d/b$a;->a()I

    move-result v4

    if-ne p0, v4, :cond_0

    .line 260
    :goto_1
    return-object v0

    .line 252
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 260
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/d/b$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 212
    const-class v0, Lcom/batch/android/d/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/batch/android/d/b$a;

    return-object v0
.end method

.method public static values()[Lcom/batch/android/d/b$a;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/batch/android/d/b$a;->f:[Lcom/batch/android/d/b$a;

    invoke-virtual {v0}, [Lcom/batch/android/d/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/d/b$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/batch/android/d/b$a;->e:I

    return v0
.end method
