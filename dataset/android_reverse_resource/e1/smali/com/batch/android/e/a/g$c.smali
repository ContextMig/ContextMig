.class final enum Lcom/batch/android/e/a/g$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/e/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/batch/android/e/a/g$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/batch/android/e/a/g$c;

.field public static final enum b:Lcom/batch/android/e/a/g$c;

.field public static final enum c:Lcom/batch/android/e/a/g$c;

.field public static final enum d:Lcom/batch/android/e/a/g$c;

.field private static final synthetic e:[Lcom/batch/android/e/a/g$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 297
    new-instance v0, Lcom/batch/android/e/a/g$c;

    const-string v1, "SELECTOR"

    invoke-direct {v0, v1, v2}, Lcom/batch/android/e/a/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/a/g$c;->a:Lcom/batch/android/e/a/g$c;

    .line 298
    new-instance v0, Lcom/batch/android/e/a/g$c;

    const-string v1, "RULESET"

    invoke-direct {v0, v1, v3}, Lcom/batch/android/e/a/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/a/g$c;->b:Lcom/batch/android/e/a/g$c;

    .line 299
    new-instance v0, Lcom/batch/android/e/a/g$c;

    const-string v1, "PROPERTY_NAME"

    invoke-direct {v0, v1, v4}, Lcom/batch/android/e/a/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/a/g$c;->c:Lcom/batch/android/e/a/g$c;

    .line 300
    new-instance v0, Lcom/batch/android/e/a/g$c;

    const-string v1, "PROPERTY_VALUE"

    invoke-direct {v0, v1, v5}, Lcom/batch/android/e/a/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/a/g$c;->d:Lcom/batch/android/e/a/g$c;

    .line 295
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/batch/android/e/a/g$c;

    sget-object v1, Lcom/batch/android/e/a/g$c;->a:Lcom/batch/android/e/a/g$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/batch/android/e/a/g$c;->b:Lcom/batch/android/e/a/g$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/batch/android/e/a/g$c;->c:Lcom/batch/android/e/a/g$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/batch/android/e/a/g$c;->d:Lcom/batch/android/e/a/g$c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/batch/android/e/a/g$c;->e:[Lcom/batch/android/e/a/g$c;

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
    .line 295
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/e/a/g$c;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 295
    const-class v0, Lcom/batch/android/e/a/g$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/a/g$c;

    return-object v0
.end method

.method public static values()[Lcom/batch/android/e/a/g$c;
    .locals 1

    .prologue
    .line 295
    sget-object v0, Lcom/batch/android/e/a/g$c;->e:[Lcom/batch/android/e/a/g$c;

    invoke-virtual {v0}, [Lcom/batch/android/e/a/g$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/e/a/g$c;

    return-object v0
.end method
