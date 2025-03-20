.class Lcom/fsck/k9/mailstore/MessageViewInfoExtractor$ViewableExtractedText;
.super Ljava/lang/Object;
.source "MessageViewInfoExtractor.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewableExtractedText"
.end annotation


# instance fields
.field public final html:Ljava/lang/String;

.field public final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/String;

    .prologue
    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iput-object p1, p0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor$ViewableExtractedText;->text:Ljava/lang/String;

    .line 538
    iput-object p2, p0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor$ViewableExtractedText;->html:Ljava/lang/String;

    .line 539
    return-void
.end method
