.class public final enum Lcom/batch/android/PushNotificationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/batch/android/a/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/batch/android/PushNotificationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALERT:Lcom/batch/android/PushNotificationType;

.field public static final enum LIGHTS:Lcom/batch/android/PushNotificationType;

.field public static final enum NONE:Lcom/batch/android/PushNotificationType;

.field public static final enum SOUND:Lcom/batch/android/PushNotificationType;

.field public static final enum VIBRATE:Lcom/batch/android/PushNotificationType;

.field private static final synthetic b:[Lcom/batch/android/PushNotificationType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/batch/android/PushNotificationType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3, v3}, Lcom/batch/android/PushNotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/PushNotificationType;->NONE:Lcom/batch/android/PushNotificationType;

    .line 23
    new-instance v0, Lcom/batch/android/PushNotificationType;

    const-string v1, "SOUND"

    invoke-direct {v0, v1, v4, v4}, Lcom/batch/android/PushNotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/PushNotificationType;->SOUND:Lcom/batch/android/PushNotificationType;

    .line 28
    new-instance v0, Lcom/batch/android/PushNotificationType;

    const-string v1, "VIBRATE"

    invoke-direct {v0, v1, v5, v5}, Lcom/batch/android/PushNotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/PushNotificationType;->VIBRATE:Lcom/batch/android/PushNotificationType;

    .line 33
    new-instance v0, Lcom/batch/android/PushNotificationType;

    const-string v1, "LIGHTS"

    invoke-direct {v0, v1, v7, v6}, Lcom/batch/android/PushNotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/PushNotificationType;->LIGHTS:Lcom/batch/android/PushNotificationType;

    .line 38
    new-instance v0, Lcom/batch/android/PushNotificationType;

    const-string v1, "ALERT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v6, v2}, Lcom/batch/android/PushNotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/PushNotificationType;->ALERT:Lcom/batch/android/PushNotificationType;

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/batch/android/PushNotificationType;

    sget-object v1, Lcom/batch/android/PushNotificationType;->NONE:Lcom/batch/android/PushNotificationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/batch/android/PushNotificationType;->SOUND:Lcom/batch/android/PushNotificationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/batch/android/PushNotificationType;->VIBRATE:Lcom/batch/android/PushNotificationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/batch/android/PushNotificationType;->LIGHTS:Lcom/batch/android/PushNotificationType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/batch/android/PushNotificationType;->ALERT:Lcom/batch/android/PushNotificationType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/batch/android/PushNotificationType;->b:[Lcom/batch/android/PushNotificationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput p3, p0, Lcom/batch/android/PushNotificationType;->a:I

    .line 54
    return-void
.end method

.method public static fromValue(I)Ljava/util/EnumSet;
    .locals 7
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/batch/android/PushNotificationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    const-class v0, Lcom/batch/android/PushNotificationType;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 62
    invoke-static {}, Lcom/batch/android/PushNotificationType;->values()[Lcom/batch/android/PushNotificationType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 64
    sget-object v5, Lcom/batch/android/PushNotificationType;->NONE:Lcom/batch/android/PushNotificationType;

    if-eq v4, v5, :cond_0

    iget v5, v4, Lcom/batch/android/PushNotificationType;->a:I

    and-int/2addr v5, p0

    iget v6, v4, Lcom/batch/android/PushNotificationType;->a:I

    if-ne v5, v6, :cond_0

    .line 66
    invoke-virtual {v1, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    sget-object v0, Lcom/batch/android/PushNotificationType;->NONE:Lcom/batch/android/PushNotificationType;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_2
    return-object v1
.end method

.method public static toValue(Ljava/util/EnumSet;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/batch/android/PushNotificationType;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "types":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/batch/android/PushNotificationType;>;"
    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/PushNotificationType;

    .line 84
    iget v0, v0, Lcom/batch/android/PushNotificationType;->a:I

    or-int/2addr v0, v1

    move v1, v0

    .line 85
    goto :goto_0

    .line 87
    :cond_0
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/PushNotificationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/batch/android/PushNotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/batch/android/PushNotificationType;

    return-object v0
.end method

.method public static values()[Lcom/batch/android/PushNotificationType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/batch/android/PushNotificationType;->b:[Lcom/batch/android/PushNotificationType;

    invoke-virtual {v0}, [Lcom/batch/android/PushNotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/PushNotificationType;

    return-object v0
.end method
