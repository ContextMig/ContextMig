.class public final enum Lcom/fsck/k9/mail/NetworkType;
.super Ljava/lang/Enum;
.source "NetworkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/mail/NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/mail/NetworkType;

.field public static final enum MOBILE:Lcom/fsck/k9/mail/NetworkType;

.field public static final enum OTHER:Lcom/fsck/k9/mail/NetworkType;

.field public static final enum WIFI:Lcom/fsck/k9/mail/NetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/fsck/k9/mail/NetworkType;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/NetworkType;->WIFI:Lcom/fsck/k9/mail/NetworkType;

    .line 12
    new-instance v0, Lcom/fsck/k9/mail/NetworkType;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/mail/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/NetworkType;->MOBILE:Lcom/fsck/k9/mail/NetworkType;

    .line 13
    new-instance v0, Lcom/fsck/k9/mail/NetworkType;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/mail/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/NetworkType;->OTHER:Lcom/fsck/k9/mail/NetworkType;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fsck/k9/mail/NetworkType;

    sget-object v1, Lcom/fsck/k9/mail/NetworkType;->WIFI:Lcom/fsck/k9/mail/NetworkType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/mail/NetworkType;->MOBILE:Lcom/fsck/k9/mail/NetworkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/mail/NetworkType;->OTHER:Lcom/fsck/k9/mail/NetworkType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fsck/k9/mail/NetworkType;->$VALUES:[Lcom/fsck/k9/mail/NetworkType;

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

.method public static fromConnectivityManagerType(I)Lcom/fsck/k9/mail/NetworkType;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 16
    packed-switch p0, :pswitch_data_0

    .line 22
    sget-object v0, Lcom/fsck/k9/mail/NetworkType;->OTHER:Lcom/fsck/k9/mail/NetworkType;

    :goto_0
    return-object v0

    .line 18
    :pswitch_0
    sget-object v0, Lcom/fsck/k9/mail/NetworkType;->MOBILE:Lcom/fsck/k9/mail/NetworkType;

    goto :goto_0

    .line 20
    :pswitch_1
    sget-object v0, Lcom/fsck/k9/mail/NetworkType;->WIFI:Lcom/fsck/k9/mail/NetworkType;

    goto :goto_0

    .line 16
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/NetworkType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/fsck/k9/mail/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/NetworkType;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/mail/NetworkType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/fsck/k9/mail/NetworkType;->$VALUES:[Lcom/fsck/k9/mail/NetworkType;

    invoke-virtual {v0}, [Lcom/fsck/k9/mail/NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/mail/NetworkType;

    return-object v0
.end method
