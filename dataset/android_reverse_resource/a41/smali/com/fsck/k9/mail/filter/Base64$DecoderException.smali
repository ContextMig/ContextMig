.class Lcom/fsck/k9/mail/filter/Base64$DecoderException;
.super Ljava/lang/Exception;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/filter/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DecoderException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x348c4cc16a925c75L


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 774
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 775
    return-void
.end method
