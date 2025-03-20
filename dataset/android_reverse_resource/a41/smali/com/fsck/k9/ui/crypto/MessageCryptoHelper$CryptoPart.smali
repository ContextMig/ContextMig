.class Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;
.super Ljava/lang/Object;
.source "MessageCryptoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CryptoPart"
.end annotation


# instance fields
.field public final part:Lcom/fsck/k9/mail/Part;

.field public final type:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;


# direct methods
.method constructor <init>(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;Lcom/fsck/k9/mail/Part;)V
    .locals 0
    .param p1, "type"    # Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;
    .param p2, "part"    # Lcom/fsck/k9/mail/Part;

    .prologue
    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    iput-object p1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->type:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    .line 763
    iput-object p2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->part:Lcom/fsck/k9/mail/Part;

    .line 764
    return-void
.end method
