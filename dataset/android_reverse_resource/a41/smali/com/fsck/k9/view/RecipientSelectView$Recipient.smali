.class public Lcom/fsck/k9/view/RecipientSelectView$Recipient;
.super Ljava/lang/Object;
.source "RecipientSelectView.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/view/RecipientSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Recipient"
.end annotation


# instance fields
.field public address:Lcom/fsck/k9/mail/Address;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public addressLabel:Ljava/lang/String;

.field public final contactId:Ljava/lang/Long;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final contactLookupKey:Ljava/lang/String;

.field private cryptoStatus:Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public transient photoThumbnailUri:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/Address;)V
    .locals 2
    .param p1, "address"    # Lcom/fsck/k9/mail/Address;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    iput-object p1, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 594
    iput-object v1, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->contactId:Ljava/lang/Long;

    .line 595
    sget-object v0, Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;->UNDEFINED:Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    iput-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->cryptoStatus:Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    .line 596
    iput-object v1, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->contactLookupKey:Ljava/lang/String;

    .line 597
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "addressLabel"    # Ljava/lang/String;
    .param p4, "contactId"    # J
    .param p6, "lookupKey"    # Ljava/lang/String;

    .prologue
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    new-instance v0, Lcom/fsck/k9/mail/Address;

    invoke-direct {v0, p2, p1}, Lcom/fsck/k9/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 601
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->contactId:Ljava/lang/Long;

    .line 602
    iput-object p3, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->addressLabel:Ljava/lang/String;

    .line 603
    sget-object v0, Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;->UNDEFINED:Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    iput-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->cryptoStatus:Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    .line 604
    iput-object p6, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->contactLookupKey:Ljava/lang/String;

    .line 605
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->cryptoStatus:Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fsck/k9/view/RecipientSelectView$Recipient;Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;)Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    .param p1, "x1"    # Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->cryptoStatus:Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    return-object p1
.end method

.method private getDisplayName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 639
    iget-object v1, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 640
    const/4 v0, 0x0

    .line 648
    :cond_0
    :goto_0
    return-object v0

    .line 643
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, "displayName":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->addressLabel:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->addressLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 688
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 691
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, "uriString":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->photoThumbnailUri:Landroid/net/Uri;

    .line 695
    .end local v0    # "uriString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 676
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 679
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->photoThumbnailUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 680
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 681
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->photoThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 685
    :goto_0
    return-void

    .line 683
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 672
    instance-of v0, p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    check-cast p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Address;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContactLookupUri()Landroid/net/Uri;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 662
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->contactId:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 663
    const/4 v0, 0x0

    .line 666
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->contactId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->contactLookupKey:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getCryptoStatus()Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 653
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->cryptoStatus:Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    return-object v0
.end method

.method public getDisplayNameOrAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, "displayName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 613
    .end local v0    # "displayName":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "displayName":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayNameOrUnknown(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, "displayName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 626
    .end local v0    # "displayName":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "displayName":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0703a6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNameOrUnknown(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 630
    iget-object v1, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 635
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0703a6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isValidEmailAddress()Z
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCryptoStatus(Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;)V
    .locals 0
    .param p1, "cryptoStatus"    # Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 657
    iput-object p1, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->cryptoStatus:Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    .line 658
    return-void
.end method
