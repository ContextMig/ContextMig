.class public final enum Lcom/batch/android/c/e$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/batch/android/c/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/batch/android/c/e$a;

.field public static final enum b:Lcom/batch/android/c/e$a;

.field public static final enum c:Lcom/batch/android/c/e$a;

.field private static final synthetic e:[Lcom/batch/android/c/e$a;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 135
    new-instance v0, Lcom/batch/android/c/e$a;

    const-string v1, "EAS"

    invoke-direct {v0, v1, v4, v3}, Lcom/batch/android/c/e$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/c/e$a;->a:Lcom/batch/android/c/e$a;

    .line 139
    new-instance v0, Lcom/batch/android/c/e$a;

    const-string v1, "EAS_HEX"

    invoke-direct {v0, v1, v5, v6}, Lcom/batch/android/c/e$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/c/e$a;->b:Lcom/batch/android/c/e$a;

    .line 143
    new-instance v0, Lcom/batch/android/c/e$a;

    const-string v1, "EAS_BASE64"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/batch/android/c/e$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/c/e$a;->c:Lcom/batch/android/c/e$a;

    .line 130
    new-array v0, v6, [Lcom/batch/android/c/e$a;

    sget-object v1, Lcom/batch/android/c/e$a;->a:Lcom/batch/android/c/e$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/batch/android/c/e$a;->b:Lcom/batch/android/c/e$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/batch/android/c/e$a;->c:Lcom/batch/android/c/e$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/batch/android/c/e$a;->e:[Lcom/batch/android/c/e$a;

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
    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 151
    iput p3, p0, Lcom/batch/android/c/e$a;->d:I

    .line 152
    return-void
.end method

.method public static a(I)Lcom/batch/android/c/e$a;
    .locals 5

    .prologue
    .line 189
    invoke-static {}, Lcom/batch/android/c/e$a;->values()[Lcom/batch/android/c/e$a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 191
    iget v4, v0, Lcom/batch/android/c/e$a;->d:I

    if-ne v4, p0, :cond_0

    .line 197
    :goto_1
    return-object v0

    .line 189
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 197
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Lcom/batch/android/c/e$a;
    .locals 1

    .prologue
    .line 173
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/e$a;->valueOf(Ljava/lang/String;)Lcom/batch/android/c/e$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    .line 175
    :catch_0
    move-exception v0

    .line 177
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/c/e$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    const-class v0, Lcom/batch/android/c/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/batch/android/c/e$a;

    return-object v0
.end method

.method public static values()[Lcom/batch/android/c/e$a;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/batch/android/c/e$a;->e:[Lcom/batch/android/c/e$a;

    invoke-virtual {v0}, [Lcom/batch/android/c/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/c/e$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/batch/android/c/e$a;->d:I

    return v0
.end method
