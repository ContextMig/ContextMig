.class public final enum Lcom/batch/android/i/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/batch/android/i/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/batch/android/i/d;

.field public static final enum b:Lcom/batch/android/i/d;

.field public static final enum c:Lcom/batch/android/i/d;

.field private static final synthetic d:[Lcom/batch/android/i/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/batch/android/i/d;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v2}, Lcom/batch/android/i/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/i/d;->a:Lcom/batch/android/i/d;

    .line 18
    new-instance v0, Lcom/batch/android/i/d;

    const-string v1, "READY"

    invoke-direct {v0, v1, v3}, Lcom/batch/android/i/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/i/d;->b:Lcom/batch/android/i/d;

    .line 23
    new-instance v0, Lcom/batch/android/i/d;

    const-string v1, "FINISHING"

    invoke-direct {v0, v1, v4}, Lcom/batch/android/i/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/i/d;->c:Lcom/batch/android/i/d;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/batch/android/i/d;

    sget-object v1, Lcom/batch/android/i/d;->a:Lcom/batch/android/i/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/batch/android/i/d;->b:Lcom/batch/android/i/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/batch/android/i/d;->c:Lcom/batch/android/i/d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/batch/android/i/d;->d:[Lcom/batch/android/i/d;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/i/d;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/batch/android/i/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/batch/android/i/d;

    return-object v0
.end method

.method public static values()[Lcom/batch/android/i/d;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/batch/android/i/d;->d:[Lcom/batch/android/i/d;

    invoke-virtual {v0}, [Lcom/batch/android/i/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/i/d;

    return-object v0
.end method
