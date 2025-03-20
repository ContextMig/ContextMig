.class final enum Lcom/batch/android/e/a/g$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/e/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/batch/android/e/a/g$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/batch/android/e/a/g$b;

.field public static final enum b:Lcom/batch/android/e/a/g$b;

.field private static final synthetic c:[Lcom/batch/android/e/a/g$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 291
    new-instance v0, Lcom/batch/android/e/a/g$b;

    const-string v1, "ROOT"

    invoke-direct {v0, v1, v2}, Lcom/batch/android/e/a/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/a/g$b;->a:Lcom/batch/android/e/a/g$b;

    .line 292
    new-instance v0, Lcom/batch/android/e/a/g$b;

    const-string v1, "MEDIA_QUERY"

    invoke-direct {v0, v1, v3}, Lcom/batch/android/e/a/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/a/g$b;->b:Lcom/batch/android/e/a/g$b;

    .line 289
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/batch/android/e/a/g$b;

    sget-object v1, Lcom/batch/android/e/a/g$b;->a:Lcom/batch/android/e/a/g$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/batch/android/e/a/g$b;->b:Lcom/batch/android/e/a/g$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/batch/android/e/a/g$b;->c:[Lcom/batch/android/e/a/g$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 289
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/e/a/g$b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 289
    const-class v0, Lcom/batch/android/e/a/g$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/a/g$b;

    return-object v0
.end method

.method public static values()[Lcom/batch/android/e/a/g$b;
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/batch/android/e/a/g$b;->c:[Lcom/batch/android/e/a/g$b;

    invoke-virtual {v0}, [Lcom/batch/android/e/a/g$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/e/a/g$b;

    return-object v0
.end method
