.class public final enum Lcom/batch/android/e/d/c$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/e/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/batch/android/e/d/c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/batch/android/e/d/c$b;

.field public static final enum b:Lcom/batch/android/e/d/c$b;

.field public static final enum c:Lcom/batch/android/e/d/c$b;

.field public static final enum d:Lcom/batch/android/e/d/c$b;

.field public static final enum e:Lcom/batch/android/e/d/c$b;

.field public static final enum f:Lcom/batch/android/e/d/c$b;

.field public static final enum g:Lcom/batch/android/e/d/c$b;

.field public static final enum h:Lcom/batch/android/e/d/c$b;

.field private static final synthetic i:[Lcom/batch/android/e/d/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    new-instance v0, Lcom/batch/android/e/d/c$b;

    const-string v1, "TOP_BOTTOM"

    invoke-direct {v0, v1, v3}, Lcom/batch/android/e/d/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/d/c$b;->a:Lcom/batch/android/e/d/c$b;

    .line 125
    new-instance v0, Lcom/batch/android/e/d/c$b;

    const-string v1, "TR_BL"

    invoke-direct {v0, v1, v4}, Lcom/batch/android/e/d/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/d/c$b;->b:Lcom/batch/android/e/d/c$b;

    .line 127
    new-instance v0, Lcom/batch/android/e/d/c$b;

    const-string v1, "RIGHT_LEFT"

    invoke-direct {v0, v1, v5}, Lcom/batch/android/e/d/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/d/c$b;->c:Lcom/batch/android/e/d/c$b;

    .line 129
    new-instance v0, Lcom/batch/android/e/d/c$b;

    const-string v1, "BR_TL"

    invoke-direct {v0, v1, v6}, Lcom/batch/android/e/d/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/d/c$b;->d:Lcom/batch/android/e/d/c$b;

    .line 131
    new-instance v0, Lcom/batch/android/e/d/c$b;

    const-string v1, "BOTTOM_TOP"

    invoke-direct {v0, v1, v7}, Lcom/batch/android/e/d/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/d/c$b;->e:Lcom/batch/android/e/d/c$b;

    .line 133
    new-instance v0, Lcom/batch/android/e/d/c$b;

    const-string v1, "BL_TR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/batch/android/e/d/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/d/c$b;->f:Lcom/batch/android/e/d/c$b;

    .line 135
    new-instance v0, Lcom/batch/android/e/d/c$b;

    const-string v1, "LEFT_RIGHT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/batch/android/e/d/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/d/c$b;->g:Lcom/batch/android/e/d/c$b;

    .line 137
    new-instance v0, Lcom/batch/android/e/d/c$b;

    const-string v1, "TL_BR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/batch/android/e/d/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/d/c$b;->h:Lcom/batch/android/e/d/c$b;

    .line 121
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/batch/android/e/d/c$b;

    sget-object v1, Lcom/batch/android/e/d/c$b;->a:Lcom/batch/android/e/d/c$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/batch/android/e/d/c$b;->b:Lcom/batch/android/e/d/c$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/batch/android/e/d/c$b;->c:Lcom/batch/android/e/d/c$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/batch/android/e/d/c$b;->d:Lcom/batch/android/e/d/c$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/batch/android/e/d/c$b;->e:Lcom/batch/android/e/d/c$b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/batch/android/e/d/c$b;->f:Lcom/batch/android/e/d/c$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/batch/android/e/d/c$b;->g:Lcom/batch/android/e/d/c$b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/batch/android/e/d/c$b;->h:Lcom/batch/android/e/d/c$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/batch/android/e/d/c$b;->i:[Lcom/batch/android/e/d/c$b;

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
    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/e/d/c$b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 121
    const-class v0, Lcom/batch/android/e/d/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/d/c$b;

    return-object v0
.end method

.method public static values()[Lcom/batch/android/e/d/c$b;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/batch/android/e/d/c$b;->i:[Lcom/batch/android/e/d/c$b;

    invoke-virtual {v0}, [Lcom/batch/android/e/d/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/e/d/c$b;

    return-object v0
.end method
