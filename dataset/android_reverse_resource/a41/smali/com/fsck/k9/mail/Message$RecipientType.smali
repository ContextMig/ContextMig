.class public final enum Lcom/fsck/k9/mail/Message$RecipientType;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecipientType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/mail/Message$RecipientType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/mail/Message$RecipientType;

.field public static final enum BCC:Lcom/fsck/k9/mail/Message$RecipientType;

.field public static final enum CC:Lcom/fsck/k9/mail/Message$RecipientType;

.field public static final enum DELIVERED_TO:Lcom/fsck/k9/mail/Message$RecipientType;

.field public static final enum TO:Lcom/fsck/k9/mail/Message$RecipientType;

.field public static final enum X_ENVELOPE_TO:Lcom/fsck/k9/mail/Message$RecipientType;

.field public static final enum X_ORIGINAL_TO:Lcom/fsck/k9/mail/Message$RecipientType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/fsck/k9/mail/Message$RecipientType;

    const-string v1, "TO"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/mail/Message$RecipientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    new-instance v0, Lcom/fsck/k9/mail/Message$RecipientType;

    const-string v1, "CC"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/mail/Message$RecipientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    new-instance v0, Lcom/fsck/k9/mail/Message$RecipientType;

    const-string v1, "BCC"

    invoke-direct {v0, v1, v5}, Lcom/fsck/k9/mail/Message$RecipientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    new-instance v0, Lcom/fsck/k9/mail/Message$RecipientType;

    const-string v1, "X_ORIGINAL_TO"

    invoke-direct {v0, v1, v6}, Lcom/fsck/k9/mail/Message$RecipientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->X_ORIGINAL_TO:Lcom/fsck/k9/mail/Message$RecipientType;

    new-instance v0, Lcom/fsck/k9/mail/Message$RecipientType;

    const-string v1, "DELIVERED_TO"

    invoke-direct {v0, v1, v7}, Lcom/fsck/k9/mail/Message$RecipientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->DELIVERED_TO:Lcom/fsck/k9/mail/Message$RecipientType;

    new-instance v0, Lcom/fsck/k9/mail/Message$RecipientType;

    const-string v1, "X_ENVELOPE_TO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/Message$RecipientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->X_ENVELOPE_TO:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/fsck/k9/mail/Message$RecipientType;

    sget-object v1, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fsck/k9/mail/Message$RecipientType;->X_ORIGINAL_TO:Lcom/fsck/k9/mail/Message$RecipientType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fsck/k9/mail/Message$RecipientType;->DELIVERED_TO:Lcom/fsck/k9/mail/Message$RecipientType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fsck/k9/mail/Message$RecipientType;->X_ENVELOPE_TO:Lcom/fsck/k9/mail/Message$RecipientType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->$VALUES:[Lcom/fsck/k9/mail/Message$RecipientType;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Message$RecipientType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/Message$RecipientType;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/mail/Message$RecipientType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->$VALUES:[Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {v0}, [Lcom/fsck/k9/mail/Message$RecipientType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/mail/Message$RecipientType;

    return-object v0
.end method
