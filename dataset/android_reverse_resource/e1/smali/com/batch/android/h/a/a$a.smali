.class public final enum Lcom/batch/android/h/a/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/h/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/batch/android/h/a/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/batch/android/h/a/a$a;

.field public static final enum b:Lcom/batch/android/h/a/a$a;

.field public static final enum c:Lcom/batch/android/h/a/a$a;

.field public static final enum d:Lcom/batch/android/h/a/a$a;

.field public static final enum e:Lcom/batch/android/h/a/a$a;

.field private static final synthetic f:[Lcom/batch/android/h/a/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/batch/android/h/a/a$a;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/batch/android/h/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/h/a/a$a;->a:Lcom/batch/android/h/a/a$a;

    .line 74
    new-instance v0, Lcom/batch/android/h/a/a$a;

    const-string v1, "BUMP"

    invoke-direct {v0, v1, v3}, Lcom/batch/android/h/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/h/a/a$a;->b:Lcom/batch/android/h/a/a$a;

    .line 75
    new-instance v0, Lcom/batch/android/h/a/a$a;

    const-string v1, "RECHECK"

    invoke-direct {v0, v1, v4}, Lcom/batch/android/h/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/h/a/a$a;->c:Lcom/batch/android/h/a/a$a;

    .line 76
    new-instance v0, Lcom/batch/android/h/a/a$a;

    const-string v1, "RESEND"

    invoke-direct {v0, v1, v5}, Lcom/batch/android/h/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/h/a/a$a;->d:Lcom/batch/android/h/a/a$a;

    .line 77
    new-instance v0, Lcom/batch/android/h/a/a$a;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/batch/android/h/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/h/a/a$a;->e:Lcom/batch/android/h/a/a$a;

    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/batch/android/h/a/a$a;

    sget-object v1, Lcom/batch/android/h/a/a$a;->a:Lcom/batch/android/h/a/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/batch/android/h/a/a$a;->b:Lcom/batch/android/h/a/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/batch/android/h/a/a$a;->c:Lcom/batch/android/h/a/a$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/batch/android/h/a/a$a;->d:Lcom/batch/android/h/a/a$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/batch/android/h/a/a$a;->e:Lcom/batch/android/h/a/a$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/batch/android/h/a/a$a;->f:[Lcom/batch/android/h/a/a$a;

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
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/h/a/a$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v0, Lcom/batch/android/h/a/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/batch/android/h/a/a$a;

    return-object v0
.end method

.method public static values()[Lcom/batch/android/h/a/a$a;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/batch/android/h/a/a$a;->f:[Lcom/batch/android/h/a/a$a;

    invoke-virtual {v0}, [Lcom/batch/android/h/a/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/h/a/a$a;

    return-object v0
.end method
