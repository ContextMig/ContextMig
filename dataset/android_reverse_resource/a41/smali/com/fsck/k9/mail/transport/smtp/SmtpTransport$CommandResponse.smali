.class Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;
.super Ljava/lang/Object;
.source "SmtpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommandResponse"
.end annotation


# instance fields
.field private final replyCode:I

.field private final results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/util/List;)V
    .locals 0
    .param p1, "replyCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    iput p1, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;->replyCode:I

    .line 554
    iput-object p2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;->results:Ljava/util/List;

    .line 555
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;

    .prologue
    .line 547
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;->results:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;)I
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;

    .prologue
    .line 547
    iget v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;->replyCode:I

    return v0
.end method
