.class public Lcom/fsck/k9/helper/Contacts;
.super Ljava/lang/Object;
.source "Contacts.java"


# static fields
.field protected static final CONTACT_ID_INDEX:I = 0x2

.field protected static final NAME_INDEX:I = 0x1

.field protected static final PROJECTION:[Ljava/lang/String;

.field protected static final SORT_ORDER:Ljava/lang/String; = "times_contacted DESC, display_name, _id"


# instance fields
.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/helper/Contacts;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/fsck/k9/helper/Contacts;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/helper/Contacts;->mContentResolver:Landroid/content/ContentResolver;

    .line 77
    return-void
.end method

.method private getContactByAddress(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 267
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 268
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/fsck/k9/helper/Contacts;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/fsck/k9/helper/Contacts;->PROJECTION:[Ljava/lang/String;

    const-string v5, "times_contacted DESC, display_name, _id"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 274
    .local v6, "c":Landroid/database/Cursor;
    return-object v6
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/fsck/k9/helper/Contacts;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    new-instance v0, Lcom/fsck/k9/helper/Contacts;

    invoke-direct {v0, p0}, Lcom/fsck/k9/helper/Contacts;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public addPhoneContact(Ljava/lang/String;)V
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "addIntent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v1, "phone"

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Lcom/fsck/k9/helper/Contacts;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void
.end method

.method public contactPickerIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 218
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public createContact(Lcom/fsck/k9/mail/Address;)V
    .locals 6
    .param p1, "email"    # Lcom/fsck/k9/mail/Address;

    .prologue
    .line 89
    const-string v3, "mailto"

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 91
    .local v1, "contactUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "contactIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 96
    const-string v3, "com.android.contacts.action.CREATE_DESCRIPTION"

    .line 97
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Address;->toString()Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "senderPersonal":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 102
    const-string v3, "name"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    :cond_0
    iget-object v3, p0, Lcom/fsck/k9/helper/Contacts;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 106
    return-void
.end method

.method public getNameForAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 172
    if-nez p1, :cond_1

    .line 173
    const/4 v1, 0x0

    .line 187
    :cond_0
    :goto_0
    return-object v1

    .line 176
    :cond_1
    invoke-direct {p0, p1}, Lcom/fsck/k9/helper/Contacts;->getContactByAddress(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 178
    .local v0, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 179
    .local v1, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 181
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 182
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 184
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getPhotoUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 233
    :try_start_0
    invoke-direct {p0, p1}, Lcom/fsck/k9/helper/Contacts;->getContactByAddress(Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 234
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 254
    .end local v0    # "c":Landroid/database/Cursor;
    :goto_0
    return-object v4

    .line 239
    .restart local v0    # "c":Landroid/database/Cursor;
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 250
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 252
    .end local v0    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v2

    .line 253
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "Couldn\'t fetch photo for contact with email %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v2, v5, v6}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 242
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "c":Landroid/database/Cursor;
    :cond_1
    :try_start_3
    const-string v5, "photo_uri"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 243
    .local v1, "columnIndex":I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 244
    .local v3, "uriString":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 250
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 246
    :cond_2
    :try_start_5
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v5

    .line 250
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v4, v5

    .line 246
    goto :goto_0

    .line 247
    .end local v1    # "columnIndex":I
    .end local v3    # "uriString":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 250
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
.end method

.method public isAnyInContacts([Lcom/fsck/k9/mail/Address;)Z
    .locals 5
    .param p1, "addresses"    # [Lcom/fsck/k9/mail/Address;

    .prologue
    const/4 v1, 0x0

    .line 152
    if-nez p1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v1

    .line 156
    :cond_1
    array-length v3, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 157
    .local v0, "addr":Lcom/fsck/k9/mail/Address;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/fsck/k9/helper/Contacts;->isInContacts(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 158
    const/4 v1, 0x1

    goto :goto_0

    .line 156
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public isInContacts(Ljava/lang/String;)Z
    .locals 3
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 130
    const/4 v1, 0x0

    .line 132
    .local v1, "result":Z
    invoke-direct {p0, p1}, Lcom/fsck/k9/helper/Contacts;->getContactByAddress(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 134
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 135
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 136
    const/4 v1, 0x1

    .line 138
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_1
    return v1
.end method

.method public markAsContacted([Lcom/fsck/k9/mail/Address;)V
    .locals 7
    .param p1, "addresses"    # [Lcom/fsck/k9/mail/Address;

    .prologue
    .line 198
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, p1, v4

    .line 199
    .local v0, "address":Lcom/fsck/k9/mail/Address;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/fsck/k9/helper/Contacts;->getContactByAddress(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 201
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 202
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 203
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 204
    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 205
    .local v2, "personId":J
    iget-object v6, p0, Lcom/fsck/k9/helper/Contacts;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v6, v2, v3}, Landroid/provider/ContactsContract$Contacts;->markAsContacted(Landroid/content/ContentResolver;J)V

    .line 207
    .end local v2    # "personId":J
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 210
    .end local v0    # "address":Lcom/fsck/k9/mail/Address;
    .end local v1    # "c":Landroid/database/Cursor;
    :cond_2
    return-void
.end method
