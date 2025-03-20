.class final enum Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;
.super Ljava/lang/Enum;
.source "StatusCodeSubject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

.field public static final enum ADDRESSING:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

.field public static final enum MAILBOX:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

.field public static final enum MAIL_DELIVERY_PROTOCOL:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

.field public static final enum MAIL_SYSTEM:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

.field public static final enum MESSAGE_CONTENT_OR_MEDIA:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

.field public static final enum NETWORK_ROUTING:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

.field public static final enum SECURITY_OR_POLICY_STATUS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

.field public static final enum UNDEFINED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;


# instance fields
.field private final codeSubject:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v4, v4}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->UNDEFINED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    .line 6
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    const-string v1, "ADDRESSING"

    invoke-direct {v0, v1, v5, v5}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->ADDRESSING:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    .line 7
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    const-string v1, "MAILBOX"

    invoke-direct {v0, v1, v6, v6}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MAILBOX:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    .line 8
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    const-string v1, "MAIL_SYSTEM"

    invoke-direct {v0, v1, v7, v7}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MAIL_SYSTEM:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    .line 9
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    const-string v1, "NETWORK_ROUTING"

    invoke-direct {v0, v1, v8, v8}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->NETWORK_ROUTING:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    .line 10
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    const-string v1, "MAIL_DELIVERY_PROTOCOL"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MAIL_DELIVERY_PROTOCOL:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    .line 11
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    const-string v1, "MESSAGE_CONTENT_OR_MEDIA"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MESSAGE_CONTENT_OR_MEDIA:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    .line 12
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    const-string v1, "SECURITY_OR_POLICY_STATUS"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->SECURITY_OR_POLICY_STATUS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    .line 4
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    sget-object v1, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->UNDEFINED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->ADDRESSING:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MAILBOX:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MAIL_SYSTEM:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->NETWORK_ROUTING:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MAIL_DELIVERY_PROTOCOL:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MESSAGE_CONTENT_OR_MEDIA:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->SECURITY_OR_POLICY_STATUS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->$VALUES:[Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "codeSubject"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->codeSubject:I

    .line 30
    return-void
.end method

.method static parse(Ljava/lang/String;)Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;
    .locals 6
    .param p0, "statusCodeSubjectString"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 20
    .local v1, "value":I
    invoke-static {}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->values()[Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 21
    .local v0, "classEnum":Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;
    iget v5, v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->codeSubject:I

    if-ne v5, v1, :cond_0

    .line 25
    .end local v0    # "classEnum":Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;
    :goto_1
    return-object v0

    .line 20
    .restart local v0    # "classEnum":Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    .end local v0    # "classEnum":Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->$VALUES:[Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-virtual {v0}, [Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    return-object v0
.end method
