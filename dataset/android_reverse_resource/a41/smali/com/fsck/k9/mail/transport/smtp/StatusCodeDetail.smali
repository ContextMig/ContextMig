.class final enum Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;
.super Ljava/lang/Enum;
.source "StatusCodeDetail.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum BAD_CONNECTION:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum BAD_DESTINATION_MAILBOX_ADDRESS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum BAD_DESTINATION_MAILBOX_ADDRESS_SYNTAX:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum BAD_DESTINATION_SYSTEM_ADDRESS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum BAD_SENDER_MAILBOX_SYNTAX:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum BAD_SENDER_SYSTEM_ADDRESS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum CONVERSION_FAILED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum CONVERSION_REQUIRED_AND_PROHIBITED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum CONVERSION_REQUIRED_BUT_UNSUPPORTED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum CONVERSION_WITH_LOSS_PERFORMED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum CRYPTOGRAPHIC_ALGORITHM_UNSUPPORTED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum CRYPTOGRAPHIC_FAILURE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum DELIVERY_NOT_AUTHORIZED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum DELIVERY_TIME_EXPIRED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum DESTINATION_ADDRESS_VALID:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum DESTINATION_MAILBOX_ADDRESS_AMBIGUOUS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum DESTINATION_MAILBOX_MOVED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum DIRECTORY_SERVER_FAILURE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum INVALID_COMMAND:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum INVALID_COMMAND_ARGUMENTS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum MAILBOX_DISABLED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum MAILBOX_FULL:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum MAILING_LIST_EXPANSION_PROBLEM:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum MAILING_LIST_EXPANSION_PROHIBITED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum MAIL_SYSTEM_CONGESTION:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum MAIL_SYSTEM_FULL:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum MEDIA_NOT_SUPPORTED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum MESSAGE_INTEGRITY_FAILURE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum MESSAGE_LENGTH_EXCEEDED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum MESSAGE_TOO_BIG:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum NO_ANSWER_FROM_HOST:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum OTHER_ADDRESS_STATUS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum OTHER_MAILBOX_STATUS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum OTHER_MAIL_DELIVERY_PROTOCOL:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum OTHER_MAIL_SYSTEM_STATUS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum OTHER_MESSAGE_CONTENT_OR_MEDIA:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum OTHER_NETWORK_ROUTING:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum OTHER_SECURITY_OR_POLICY_STATUS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum ROUTING_LOOP_DETECTED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum SECURITY_CONVERSION_REQUIRED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum SECURITY_FEATURES_UNSUPPORTED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum SYNTAX_ERROR:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum SYSTEM_INCAPABLE_OF_FEATURE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum SYSTEM_INCORRECTLY_CONFIGURED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum SYSTEM_NOT_ACCEPTING_MESSAGES:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum TOO_MANY_RECIPIENTS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum UNABLE_TO_ROUTE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum UNDEFINED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field public static final enum WRONG_PROTOCOL_VERSION:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;


# instance fields
.field private final detail:I

.field private final subject:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "UNDEFINED"

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->UNDEFINED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->UNDEFINED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 6
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "OTHER_ADDRESS_STATUS"

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->ADDRESSING:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->OTHER_ADDRESS_STATUS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 7
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "BAD_DESTINATION_MAILBOX_ADDRESS"

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->ADDRESSING:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v7, v2, v6}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->BAD_DESTINATION_MAILBOX_ADDRESS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 8
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "BAD_DESTINATION_SYSTEM_ADDRESS"

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->ADDRESSING:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v8, v2, v7}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->BAD_DESTINATION_SYSTEM_ADDRESS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 9
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "BAD_DESTINATION_MAILBOX_ADDRESS_SYNTAX"

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->ADDRESSING:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v9, v2, v8}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->BAD_DESTINATION_MAILBOX_ADDRESS_SYNTAX:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 10
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "DESTINATION_MAILBOX_ADDRESS_AMBIGUOUS"

    const/4 v2, 0x5

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->ADDRESSING:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->DESTINATION_MAILBOX_ADDRESS_AMBIGUOUS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 11
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "DESTINATION_ADDRESS_VALID"

    const/4 v2, 0x6

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->ADDRESSING:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->DESTINATION_ADDRESS_VALID:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 12
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "DESTINATION_MAILBOX_MOVED"

    const/4 v2, 0x7

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->ADDRESSING:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->DESTINATION_MAILBOX_MOVED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 13
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "BAD_SENDER_MAILBOX_SYNTAX"

    const/16 v2, 0x8

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->ADDRESSING:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->BAD_SENDER_MAILBOX_SYNTAX:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 14
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "BAD_SENDER_SYSTEM_ADDRESS"

    const/16 v2, 0x9

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->ADDRESSING:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->BAD_SENDER_SYSTEM_ADDRESS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 16
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "OTHER_MAILBOX_STATUS"

    const/16 v2, 0xa

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MAILBOX:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->OTHER_MAILBOX_STATUS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 17
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "MAILBOX_DISABLED"

    const/16 v2, 0xb

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MAILBOX:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->MAILBOX_DISABLED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 18
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "MAILBOX_FULL"

    const/16 v2, 0xc

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MAILBOX:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->MAILBOX_FULL:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 19
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "MESSAGE_LENGTH_EXCEEDED"

    const/16 v2, 0xd

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MAILBOX:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->MESSAGE_LENGTH_EXCEEDED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 20
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "MAILING_LIST_EXPANSION_PROBLEM"

    const/16 v2, 0xe

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MAILBOX:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->MAILING_LIST_EXPANSION_PROBLEM:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 22
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "OTHER_MAIL_SYSTEM_STATUS"

    const/16 v2, 0xf

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MAIL_SYSTEM:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->OTHER_MAIL_SYSTEM_STATUS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 23
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "MAIL_SYSTEM_FULL"

    const/16 v2, 0x10

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MAIL_SYSTEM:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->MAIL_SYSTEM_FULL:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 24
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "SYSTEM_NOT_ACCEPTING_MESSAGES"

    const/16 v2, 0x11

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MAIL_SYSTEM:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->SYSTEM_NOT_ACCEPTING_MESSAGES:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 25
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "SYSTEM_INCAPABLE_OF_FEATURE"

    const/16 v2, 0x12

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MAIL_SYSTEM:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->SYSTEM_INCAPABLE_OF_FEATURE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 26
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "MESSAGE_TOO_BIG"

    const/16 v2, 0x13

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MAIL_SYSTEM:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->MESSAGE_TOO_BIG:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 27
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "SYSTEM_INCORRECTLY_CONFIGURED"

    const/16 v2, 0x14

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MAIL_SYSTEM:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->SYSTEM_INCORRECTLY_CONFIGURED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 29
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "OTHER_NETWORK_ROUTING"

    const/16 v2, 0x15

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->NETWORK_ROUTING:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->OTHER_NETWORK_ROUTING:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 30
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "NO_ANSWER_FROM_HOST"

    const/16 v2, 0x16

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->NETWORK_ROUTING:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->NO_ANSWER_FROM_HOST:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 31
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "BAD_CONNECTION"

    const/16 v2, 0x17

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->NETWORK_ROUTING:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->BAD_CONNECTION:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 32
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "DIRECTORY_SERVER_FAILURE"

    const/16 v2, 0x18

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->NETWORK_ROUTING:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->DIRECTORY_SERVER_FAILURE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 33
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "UNABLE_TO_ROUTE"

    const/16 v2, 0x19

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->NETWORK_ROUTING:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->UNABLE_TO_ROUTE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 34
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "MAIL_SYSTEM_CONGESTION"

    const/16 v2, 0x1a

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->NETWORK_ROUTING:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->MAIL_SYSTEM_CONGESTION:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 35
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "ROUTING_LOOP_DETECTED"

    const/16 v2, 0x1b

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->NETWORK_ROUTING:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->ROUTING_LOOP_DETECTED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 36
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "DELIVERY_TIME_EXPIRED"

    const/16 v2, 0x1c

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->NETWORK_ROUTING:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->DELIVERY_TIME_EXPIRED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 38
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "OTHER_MAIL_DELIVERY_PROTOCOL"

    const/16 v2, 0x1d

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MAIL_DELIVERY_PROTOCOL:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->OTHER_MAIL_DELIVERY_PROTOCOL:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 39
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "INVALID_COMMAND"

    const/16 v2, 0x1e

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MAIL_DELIVERY_PROTOCOL:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->INVALID_COMMAND:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 40
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "SYNTAX_ERROR"

    const/16 v2, 0x1f

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MAIL_DELIVERY_PROTOCOL:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->SYNTAX_ERROR:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 41
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "TOO_MANY_RECIPIENTS"

    const/16 v2, 0x20

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MAIL_DELIVERY_PROTOCOL:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->TOO_MANY_RECIPIENTS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 42
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "INVALID_COMMAND_ARGUMENTS"

    const/16 v2, 0x21

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MAIL_DELIVERY_PROTOCOL:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->INVALID_COMMAND_ARGUMENTS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 43
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "WRONG_PROTOCOL_VERSION"

    const/16 v2, 0x22

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MAIL_DELIVERY_PROTOCOL:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->WRONG_PROTOCOL_VERSION:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 45
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "OTHER_MESSAGE_CONTENT_OR_MEDIA"

    const/16 v2, 0x23

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MESSAGE_CONTENT_OR_MEDIA:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->OTHER_MESSAGE_CONTENT_OR_MEDIA:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 46
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "MEDIA_NOT_SUPPORTED"

    const/16 v2, 0x24

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MESSAGE_CONTENT_OR_MEDIA:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->MEDIA_NOT_SUPPORTED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 47
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "CONVERSION_REQUIRED_AND_PROHIBITED"

    const/16 v2, 0x25

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MESSAGE_CONTENT_OR_MEDIA:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->CONVERSION_REQUIRED_AND_PROHIBITED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 48
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "CONVERSION_REQUIRED_BUT_UNSUPPORTED"

    const/16 v2, 0x26

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MESSAGE_CONTENT_OR_MEDIA:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->CONVERSION_REQUIRED_BUT_UNSUPPORTED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 49
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "CONVERSION_WITH_LOSS_PERFORMED"

    const/16 v2, 0x27

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MESSAGE_CONTENT_OR_MEDIA:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->CONVERSION_WITH_LOSS_PERFORMED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 50
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "CONVERSION_FAILED"

    const/16 v2, 0x28

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->MESSAGE_CONTENT_OR_MEDIA:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->CONVERSION_FAILED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 52
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "OTHER_SECURITY_OR_POLICY_STATUS"

    const/16 v2, 0x29

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->SECURITY_OR_POLICY_STATUS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->OTHER_SECURITY_OR_POLICY_STATUS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 53
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "DELIVERY_NOT_AUTHORIZED"

    const/16 v2, 0x2a

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->SECURITY_OR_POLICY_STATUS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->DELIVERY_NOT_AUTHORIZED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 54
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "MAILING_LIST_EXPANSION_PROHIBITED"

    const/16 v2, 0x2b

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->SECURITY_OR_POLICY_STATUS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->MAILING_LIST_EXPANSION_PROHIBITED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 55
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "SECURITY_CONVERSION_REQUIRED"

    const/16 v2, 0x2c

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->SECURITY_OR_POLICY_STATUS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->SECURITY_CONVERSION_REQUIRED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 56
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "SECURITY_FEATURES_UNSUPPORTED"

    const/16 v2, 0x2d

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->SECURITY_OR_POLICY_STATUS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->SECURITY_FEATURES_UNSUPPORTED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 57
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "CRYPTOGRAPHIC_FAILURE"

    const/16 v2, 0x2e

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->SECURITY_OR_POLICY_STATUS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->CRYPTOGRAPHIC_FAILURE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 58
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "CRYPTOGRAPHIC_ALGORITHM_UNSUPPORTED"

    const/16 v2, 0x2f

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->SECURITY_OR_POLICY_STATUS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->CRYPTOGRAPHIC_ALGORITHM_UNSUPPORTED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 59
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    const-string v1, "MESSAGE_INTEGRITY_FAILURE"

    const/16 v2, 0x30

    sget-object v3, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->SECURITY_OR_POLICY_STATUS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->MESSAGE_INTEGRITY_FAILURE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 4
    const/16 v0, 0x31

    new-array v0, v0, [Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    sget-object v1, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->UNDEFINED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->OTHER_ADDRESS_STATUS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->BAD_DESTINATION_MAILBOX_ADDRESS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->BAD_DESTINATION_SYSTEM_ADDRESS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v1, v0, v8

    sget-object v1, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->BAD_DESTINATION_MAILBOX_ADDRESS_SYNTAX:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->DESTINATION_MAILBOX_ADDRESS_AMBIGUOUS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->DESTINATION_ADDRESS_VALID:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->DESTINATION_MAILBOX_MOVED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->BAD_SENDER_MAILBOX_SYNTAX:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->BAD_SENDER_SYSTEM_ADDRESS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->OTHER_MAILBOX_STATUS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->MAILBOX_DISABLED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->MAILBOX_FULL:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->MESSAGE_LENGTH_EXCEEDED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->MAILING_LIST_EXPANSION_PROBLEM:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->OTHER_MAIL_SYSTEM_STATUS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->MAIL_SYSTEM_FULL:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->SYSTEM_NOT_ACCEPTING_MESSAGES:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->SYSTEM_INCAPABLE_OF_FEATURE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->MESSAGE_TOO_BIG:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->SYSTEM_INCORRECTLY_CONFIGURED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->OTHER_NETWORK_ROUTING:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->NO_ANSWER_FROM_HOST:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->BAD_CONNECTION:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->DIRECTORY_SERVER_FAILURE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->UNABLE_TO_ROUTE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->MAIL_SYSTEM_CONGESTION:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->ROUTING_LOOP_DETECTED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->DELIVERY_TIME_EXPIRED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->OTHER_MAIL_DELIVERY_PROTOCOL:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->INVALID_COMMAND:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->SYNTAX_ERROR:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->TOO_MANY_RECIPIENTS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->INVALID_COMMAND_ARGUMENTS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->WRONG_PROTOCOL_VERSION:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->OTHER_MESSAGE_CONTENT_OR_MEDIA:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->MEDIA_NOT_SUPPORTED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->CONVERSION_REQUIRED_AND_PROHIBITED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->CONVERSION_REQUIRED_BUT_UNSUPPORTED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->CONVERSION_WITH_LOSS_PERFORMED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->CONVERSION_FAILED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->OTHER_SECURITY_OR_POLICY_STATUS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->DELIVERY_NOT_AUTHORIZED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->MAILING_LIST_EXPANSION_PROHIBITED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->SECURITY_CONVERSION_REQUIRED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->SECURITY_FEATURES_UNSUPPORTED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->CRYPTOGRAPHIC_FAILURE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->CRYPTOGRAPHIC_ALGORITHM_UNSUPPORTED:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->MESSAGE_INTEGRITY_FAILURE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->$VALUES:[Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;I)V
    .locals 0
    .param p3, "subject"    # Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;
    .param p4, "detail"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput-object p3, p0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->subject:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    .line 78
    iput p4, p0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->detail:I

    .line 79
    return-void
.end method

.method public static parse(Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;Ljava/lang/String;)Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;
    .locals 6
    .param p0, "statusCodeSubject"    # Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;
    .param p1, "statusCodeDetailString"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 68
    .local v1, "value":I
    invoke-static {}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->values()[Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 69
    .local v0, "detailEnum":Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;
    iget-object v5, v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->subject:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    if-ne v5, p0, :cond_0

    iget v5, v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->detail:I

    if-ne v5, v1, :cond_0

    .line 73
    .end local v0    # "detailEnum":Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;
    :goto_1
    return-object v0

    .line 68
    .restart local v0    # "detailEnum":Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "detailEnum":Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->$VALUES:[Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    invoke-virtual {v0}, [Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    return-object v0
.end method
