.class Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;
.super Ljava/lang/Object;
.source "AccountSetupCheckSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->acceptKeyDialog(ILcom/fsck/k9/mail/CertificateValidationException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

.field final synthetic val$ex:Lcom/fsck/k9/mail/CertificateValidationException;

.field final synthetic val$msgResId:I


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;Lcom/fsck/k9/mail/CertificateValidationException;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    iput-object p2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->val$ex:Lcom/fsck/k9/mail/CertificateValidationException;

    iput p3, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->val$msgResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$100(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 274
    :goto_0
    return-void

    .line 137
    :cond_0
    const-string v7, "Unknown Error"

    .line 139
    .local v7, "exMessage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->val$ex:Lcom/fsck/k9/mail/CertificateValidationException;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->val$ex:Lcom/fsck/k9/mail/CertificateValidationException;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/CertificateValidationException;->getCause()Ljava/lang/Throwable;

    move-result-object v18

    if-eqz v18, :cond_6

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->val$ex:Lcom/fsck/k9/mail/CertificateValidationException;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/CertificateValidationException;->getCause()Ljava/lang/Throwable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v18

    if-eqz v18, :cond_5

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->val$ex:Lcom/fsck/k9/mail/CertificateValidationException;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/CertificateValidationException;->getCause()Ljava/lang/Throwable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 152
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$200(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Landroid/widget/ProgressBar;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v18, 0x64

    move/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 154
    .local v4, "chainInfo":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 156
    .local v10, "sha1":Ljava/security/MessageDigest;
    :try_start_0
    const-string v18, "SHA-1"

    invoke-static/range {v18 .. v18}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 161
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->val$ex:Lcom/fsck/k9/mail/CertificateValidationException;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/CertificateValidationException;->getCertChain()[Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 163
    .local v3, "chain":[Ljava/security/cert/X509Certificate;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    array-length v0, v3

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_b

    .line 166
    const-string v18, "Certificate chain["

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]:\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v18, "Subject: "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, v3, v8

    invoke-virtual/range {v19 .. v19}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :try_start_1
    aget-object v18, v3, v8

    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v14

    .line 175
    .local v14, "subjectAlternativeNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    if-eqz v14, :cond_3

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v2, "altNamesText":Ljava/lang/StringBuilder;
    const-string v18, "Subject has "

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " alternative names\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$300(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Lcom/fsck/k9/Account;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v12

    .line 183
    .local v12, "storeURIHost":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$300(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Lcom/fsck/k9/Account;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/Account;->getTransportUri()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v15

    .line 185
    .local v15, "transportURIHost":Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_2
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 186
    .local v13, "subjectAlternativeName":Ljava/util/List;, "Ljava/util/List<*>;"
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 187
    .local v16, "type":Ljava/lang/Integer;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 189
    .local v17, "value":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 215
    const-string v19, "unsupported SubjectAltName of unknown type"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 233
    .end local v2    # "altNamesText":Ljava/lang/StringBuilder;
    .end local v12    # "storeURIHost":Ljava/lang/String;
    .end local v13    # "subjectAlternativeName":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v14    # "subjectAlternativeNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    .end local v15    # "transportURIHost":Ljava/lang/String;
    .end local v16    # "type":Ljava/lang/Integer;
    .end local v17    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 235
    .local v6, "e1":Ljava/lang/Exception;
    const-string v18, "cannot display SubjectAltNames in dialog"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v6, v0, v1}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    .end local v6    # "e1":Ljava/lang/Exception;
    :cond_3
    :goto_5
    const-string v18, "Issuer: "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, v3, v8

    invoke-virtual/range {v19 .. v19}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    if-eqz v10, :cond_4

    .line 240
    invoke-virtual {v10}, Ljava/security/MessageDigest;->reset()V

    .line 242
    :try_start_2
    aget-object v18, v3, v8

    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/fsck/k9/mail/filter/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v11

    .line 243
    .local v11, "sha1sum":Ljava/lang/String;
    const-string v18, "Fingerprint (SHA-1): "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 163
    .end local v11    # "sha1sum":Ljava/lang/String;
    :cond_4
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 145
    .end local v3    # "chain":[Ljava/security/cert/X509Certificate;
    .end local v4    # "chainInfo":Ljava/lang/StringBuilder;
    .end local v8    # "i":I
    .end local v10    # "sha1":Ljava/security/MessageDigest;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->val$ex:Lcom/fsck/k9/mail/CertificateValidationException;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/CertificateValidationException;->getCause()Ljava/lang/Throwable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 148
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->val$ex:Lcom/fsck/k9/mail/CertificateValidationException;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/CertificateValidationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 157
    .restart local v4    # "chainInfo":Ljava/lang/StringBuilder;
    .restart local v10    # "sha1":Ljava/security/MessageDigest;
    :catch_1
    move-exception v5

    .line 158
    .local v5, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v18, "Error while initializing MessageDigest"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v5, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 191
    .end local v5    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v2    # "altNamesText":Ljava/lang/StringBuilder;
    .restart local v3    # "chain":[Ljava/security/cert/X509Certificate;
    .restart local v8    # "i":I
    .restart local v12    # "storeURIHost":Ljava/lang/String;
    .restart local v13    # "subjectAlternativeName":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v14    # "subjectAlternativeNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    .restart local v15    # "transportURIHost":Ljava/lang/String;
    .restart local v16    # "type":Ljava/lang/Integer;
    .restart local v17    # "value":Ljava/lang/Object;
    :pswitch_0
    :try_start_3
    const-string v19, "SubjectAltName of type OtherName not supported."

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 194
    :pswitch_1
    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 221
    .local v9, "name":Ljava/lang/String;
    :goto_7
    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_7

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 223
    :cond_7
    const-string v19, "Subject(alt): "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",...\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 197
    .end local v9    # "name":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 198
    .restart local v9    # "name":Ljava/lang/String;
    goto :goto_7

    .line 200
    .end local v9    # "name":Ljava/lang/String;
    :pswitch_3
    const-string v19, "unsupported SubjectAltName of type x400Address"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 203
    :pswitch_4
    const-string v19, "unsupported SubjectAltName of type directoryName"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 206
    :pswitch_5
    const-string v19, "unsupported SubjectAltName of type ediPartyName"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 209
    :pswitch_6
    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 210
    .restart local v9    # "name":Ljava/lang/String;
    goto :goto_7

    .line 212
    .end local v9    # "name":Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 213
    .restart local v9    # "name":Ljava/lang/String;
    goto :goto_7

    .line 224
    :cond_8
    const-string v19, "*."

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    const/16 v19, 0x2

    .line 225
    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_9

    const/16 v19, 0x2

    .line 226
    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 228
    :cond_9
    const-string v19, "Subject(alt): "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",...\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 231
    .end local v9    # "name":Ljava/lang/String;
    .end local v13    # "subjectAlternativeName":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v16    # "type":Ljava/lang/Integer;
    .end local v17    # "value":Ljava/lang/Object;
    :cond_a
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_5

    .line 244
    .end local v2    # "altNamesText":Ljava/lang/StringBuilder;
    .end local v12    # "storeURIHost":Ljava/lang/String;
    .end local v14    # "subjectAlternativeNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    .end local v15    # "transportURIHost":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 245
    .local v5, "e":Ljava/security/cert/CertificateEncodingException;
    const-string v18, "Error while encoding certificate"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v5, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 252
    .end local v5    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_b
    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    move-object/from16 v19, v0

    const v20, 0x7f0700d2

    .line 253
    invoke-virtual/range {v19 .. v20}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->val$msgResId:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v7, v22, v23

    .line 255
    invoke-virtual/range {v20 .. v22}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 256
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 255
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const/16 v19, 0x1

    .line 258
    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    move-object/from16 v19, v0

    const v20, 0x7f0700d0

    .line 260
    invoke-virtual/range {v19 .. v20}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1$2;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;[Ljava/security/cert/X509Certificate;)V

    .line 259
    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    move-object/from16 v19, v0

    const v20, 0x7f0700d1

    .line 267
    invoke-virtual/range {v19 .. v20}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1$1;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;)V

    .line 266
    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 273
    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
