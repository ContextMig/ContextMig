.class Lcom/fsck/k9/mail/store/webdav/WebDavConstants;
.super Ljava/lang/Object;
.source "WebDavConstants.java"


# static fields
.field static final AUTH_TYPE_BASIC:S = 0x1s

.field static final AUTH_TYPE_FORM_BASED:S = 0x2s

.field static final AUTH_TYPE_NONE:S = 0x0s

.field static final DAV_MAIL_DRAFTS_FOLDER:Ljava/lang/String; = "drafts"

.field static final DAV_MAIL_INBOX_FOLDER:Ljava/lang/String; = "inbox"

.field static final DAV_MAIL_OUTBOX_FOLDER:Ljava/lang/String; = "outbox"

.field static final DAV_MAIL_SEND_FOLDER:Ljava/lang/String; = "##DavMailSubmissionURI##"

.field static final DAV_MAIL_SENT_FOLDER:Ljava/lang/String; = "sentitems"

.field static final DAV_MAIL_SPAM_FOLDER:Ljava/lang/String; = "junkemail"

.field static final DAV_MAIL_TRASH_FOLDER:Ljava/lang/String; = "deleteditems"

.field static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/fsck/k9/mail/store/webdav/WebDavConstants;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
