.class final enum Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;
.super Ljava/lang/Enum;
.source "DbxTwofactorDeliveryMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;

.field public static final enum OFFLINE:Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;

.field public static final enum SMS:Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;

    const-string v1, "SMS"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;->SMS:Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;

    .line 11
    new-instance v0, Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;

    const-string v1, "OFFLINE"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;->OFFLINE:Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;

    sget-object v1, Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;->SMS:Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;->OFFLINE:Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;->$VALUES:[Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;->$VALUES:[Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;

    invoke-virtual {v0}, [Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/sync/android/DbxTwofactorDeliveryMode;

    return-object v0
.end method
