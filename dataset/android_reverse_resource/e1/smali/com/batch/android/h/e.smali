.class public final enum Lcom/batch/android/h/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/batch/android/h/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/batch/android/h/e;

.field public static final enum b:Lcom/batch/android/h/e;

.field public static final enum c:Lcom/batch/android/h/e;

.field public static final enum d:Lcom/batch/android/h/e;

.field public static final enum e:Lcom/batch/android/h/e;

.field private static final synthetic f:[Lcom/batch/android/h/e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/batch/android/h/e;

    const-string v1, "START"

    invoke-direct {v0, v1, v2}, Lcom/batch/android/h/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/h/e;->a:Lcom/batch/android/h/e;

    .line 18
    new-instance v0, Lcom/batch/android/h/e;

    const-string v1, "TRACKING"

    invoke-direct {v0, v1, v3}, Lcom/batch/android/h/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/h/e;->b:Lcom/batch/android/h/e;

    .line 22
    new-instance v0, Lcom/batch/android/h/e;

    const-string v1, "PUSH"

    invoke-direct {v0, v1, v4}, Lcom/batch/android/h/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/h/e;->c:Lcom/batch/android/h/e;

    .line 26
    new-instance v0, Lcom/batch/android/h/e;

    const-string v1, "ATTRIBUTES"

    invoke-direct {v0, v1, v5}, Lcom/batch/android/h/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/h/e;->d:Lcom/batch/android/h/e;

    .line 30
    new-instance v0, Lcom/batch/android/h/e;

    const-string v1, "ATTRIBUTES_CHECK"

    invoke-direct {v0, v1, v6}, Lcom/batch/android/h/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/h/e;->e:Lcom/batch/android/h/e;

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/batch/android/h/e;

    sget-object v1, Lcom/batch/android/h/e;->a:Lcom/batch/android/h/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/batch/android/h/e;->b:Lcom/batch/android/h/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/batch/android/h/e;->c:Lcom/batch/android/h/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/batch/android/h/e;->d:Lcom/batch/android/h/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/batch/android/h/e;->e:Lcom/batch/android/h/e;

    aput-object v1, v0, v6

    sput-object v0, Lcom/batch/android/h/e;->f:[Lcom/batch/android/h/e;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/h/e;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/batch/android/h/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/batch/android/h/e;

    return-object v0
.end method

.method public static values()[Lcom/batch/android/h/e;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/batch/android/h/e;->f:[Lcom/batch/android/h/e;

    invoke-virtual {v0}, [Lcom/batch/android/h/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/h/e;

    return-object v0
.end method
