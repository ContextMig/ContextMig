.class public Lcom/fsck/k9/activity/compose/RecipientLoader;
.super Landroid/content/AsyncTaskLoader;
.source "RecipientLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final CRYPTO_PROVIDER_STATUS_TRUSTED:I = 0x2

.field private static final CRYPTO_PROVIDER_STATUS_UNTRUSTED:I = 0x1

.field private static final INDEX_AUTOCRYPT_STATUS:I = 0x2

.field private static final INDEX_CONTACT_ID:I = 0x6

.field private static final INDEX_CONTACT_ID_FOR_NICKNAME:I = 0x0

.field private static final INDEX_EMAIL:I = 0x3

.field private static final INDEX_EMAIL_ADDRESS:I = 0x0

.field private static final INDEX_EMAIL_CUSTOM_LABEL:I = 0x5

.field private static final INDEX_EMAIL_STATUS:I = 0x1

.field private static final INDEX_EMAIL_TYPE:I = 0x4

.field private static final INDEX_LOOKUP_KEY:I = 0x2

.field private static final INDEX_NAME:I = 0x1

.field private static final INDEX_NICKNAME:I = 0x1

.field private static final INDEX_PHOTO_URI:I = 0x7

.field private static final INDEX_USER_ID:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION_CRYPTO_ADDRESSES:[Ljava/lang/String;

.field private static final PROJECTION_CRYPTO_STATUS:[Ljava/lang/String;

.field private static final PROJECTION_NICKNAME:[Ljava/lang/String;

.field private static final SORT_ORDER:Ljava/lang/String; = "times_contacted DESC, sort_key"


# instance fields
.field private final addresses:[Lcom/fsck/k9/mail/Address;

.field private cachedRecipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;"
        }
    .end annotation
.end field

.field private final contactUri:Landroid/net/Uri;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final cryptoProvider:Ljava/lang/String;

.field private final lookupKeyUri:Landroid/net/Uri;

.field private observerContact:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;>.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private observerKey:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;>.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private final query:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "lookup"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientLoader;->PROJECTION:[Ljava/lang/String;

    .line 54
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientLoader;->PROJECTION_NICKNAME:[Ljava/lang/String;

    .line 62
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v3

    const-string v1, "uid_address"

    aput-object v1, v0, v4

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientLoader;->PROJECTION_CRYPTO_ADDRESSES:[Ljava/lang/String;

    .line 69
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v3

    const-string v1, "uid_key_status"

    aput-object v1, v0, v4

    const-string v1, "autocrypt_key_status"

    aput-object v1, v0, v5

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientLoader;->PROJECTION_CRYPTO_STATUS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cryptoProvider"    # Ljava/lang/String;
    .param p3, "contactUri"    # Landroid/net/Uri;
    .param p4, "isLookupKey"    # Z

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 118
    iput-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->query:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->addresses:[Lcom/fsck/k9/mail/Address;

    .line 120
    if-eqz p4, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contactUri:Landroid/net/Uri;

    .line 121
    if-eqz p4, :cond_1

    .end local p3    # "contactUri":Landroid/net/Uri;
    :goto_1
    iput-object p3, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->lookupKeyUri:Landroid/net/Uri;

    .line 122
    iput-object p2, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->cryptoProvider:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    .line 125
    return-void

    .restart local p3    # "contactUri":Landroid/net/Uri;
    :cond_0
    move-object v0, p3

    .line 120
    goto :goto_0

    :cond_1
    move-object p3, v1

    .line 121
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cryptoProvider"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 96
    iput-object p3, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->query:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->lookupKeyUri:Landroid/net/Uri;

    .line 98
    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->addresses:[Lcom/fsck/k9/mail/Address;

    .line 99
    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contactUri:Landroid/net/Uri;

    .line 100
    iput-object p2, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->cryptoProvider:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    .line 103
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;[Lcom/fsck/k9/mail/Address;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cryptoProvider"    # Ljava/lang/String;
    .param p3, "addresses"    # [Lcom/fsck/k9/mail/Address;

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 107
    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->query:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->addresses:[Lcom/fsck/k9/mail/Address;

    .line 109
    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contactUri:Landroid/net/Uri;

    .line 110
    iput-object p2, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->cryptoProvider:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->lookupKeyUri:Landroid/net/Uri;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    .line 114
    return-void
.end method

.method private fillContactDataFromAddresses([Lcom/fsck/k9/mail/Address;Ljava/util/List;Ljava/util/Map;)V
    .locals 5
    .param p1, "addresses"    # [Lcom/fsck/k9/mail/Address;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fsck/k9/mail/Address;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p2, "recipients":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    .local p3, "recipientMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 197
    .local v0, "address":Lcom/fsck/k9/mail/Address;
    new-instance v1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    invoke-direct {v1, v0}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;-><init>(Lcom/fsck/k9/mail/Address;)V

    .line 198
    .local v1, "recipient":Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {v0}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    .end local v0    # "address":Lcom/fsck/k9/mail/Address;
    .end local v1    # "recipient":Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    :cond_0
    return-void
.end method

.method private fillContactDataFromCryptoProvider(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 15
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p2, "recipients":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    .local p3, "recipientMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->cryptoProvider:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".provider.exported/autocrypt_status"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 164
    .local v2, "queryUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/fsck/k9/activity/compose/RecipientLoader;->PROJECTION_CRYPTO_ADDRESSES:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 167
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 191
    .end local v2    # "queryUri":Landroid/net/Uri;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v10

    .line 171
    .local v10, "e":Ljava/lang/SecurityException;
    const-string v1, "Couldn\'t obtain recipients from crypto provider!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v10, v1, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 175
    .end local v10    # "e":Ljava/lang/SecurityException;
    .restart local v2    # "queryUri":Landroid/net/Uri;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 177
    .local v12, "uid":Ljava/lang/String;
    invoke-static {v12}, Lcom/fsck/k9/mail/Address;->parseUnencoded(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v8

    .line 179
    .local v8, "addresses":[Lcom/fsck/k9/mail/Address;
    array-length v3, v8

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v7, v8, v1

    .line 180
    .local v7, "address":Lcom/fsck/k9/mail/Address;
    invoke-virtual {v7}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 179
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 184
    :cond_1
    new-instance v11, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    invoke-direct {v11, v7}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;-><init>(Lcom/fsck/k9/mail/Address;)V

    .line 185
    .local v11, "recipient":Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {v7}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 190
    .end local v7    # "address":Lcom/fsck/k9/mail/Address;
    .end local v8    # "addresses":[Lcom/fsck/k9/mail/Address;
    .end local v11    # "recipient":Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    .end local v12    # "uid":Ljava/lang/String;
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private fillContactDataFromCursor(Landroid/database/Cursor;Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p2, "recipients":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    .local p3, "recipientMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fsck/k9/activity/compose/RecipientLoader;->fillContactDataFromCursor(Landroid/database/Cursor;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method private fillContactDataFromCursor(Landroid/database/Cursor;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p4, "prefilledName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 338
    .local p2, "recipients":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    .local p3, "recipientMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 339
    if-eqz p4, :cond_1

    move-object v1, p4

    .line 341
    .local v1, "name":Ljava/lang/String;
    :goto_1
    const/4 v9, 0x3

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, "email":Ljava/lang/String;
    const/4 v9, 0x6

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 343
    .local v4, "contactId":J
    const/4 v9, 0x2

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 346
    .local v6, "lookupKey":Ljava/lang/String;
    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 351
    const/4 v9, 0x4

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 352
    .local v7, "addressType":I
    const/4 v3, 0x0

    .line 353
    .local v3, "addressLabel":Ljava/lang/String;
    packed-switch v7, :pswitch_data_0

    .line 377
    :goto_2
    new-instance v0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 378
    .local v0, "recipient":Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    invoke-virtual {v0}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->isValidEmailAddress()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 379
    const/4 v9, 0x7

    invoke-interface {p1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v8, 0x0

    .line 381
    .local v8, "photoUri":Landroid/net/Uri;
    :goto_3
    iput-object v8, v0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->photoThumbnailUri:Landroid/net/Uri;

    .line 382
    invoke-interface {p3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 339
    .end local v0    # "recipient":Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "email":Ljava/lang/String;
    .end local v3    # "addressLabel":Ljava/lang/String;
    .end local v4    # "contactId":J
    .end local v6    # "lookupKey":Ljava/lang/String;
    .end local v7    # "addressType":I
    .end local v8    # "photoUri":Landroid/net/Uri;
    :cond_1
    const/4 v9, 0x1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 355
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "email":Ljava/lang/String;
    .restart local v3    # "addressLabel":Ljava/lang/String;
    .restart local v4    # "contactId":J
    .restart local v6    # "lookupKey":Ljava/lang/String;
    .restart local v7    # "addressType":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientLoader;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f070132

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 356
    goto :goto_2

    .line 359
    :pswitch_1
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientLoader;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f070135

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 360
    goto :goto_2

    .line 363
    :pswitch_2
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientLoader;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f070134

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 364
    goto :goto_2

    .line 368
    :pswitch_3
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientLoader;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f070133

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 369
    goto :goto_2

    .line 372
    :pswitch_4
    const/4 v9, 0x5

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 379
    .restart local v0    # "recipient":Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    :cond_2
    const/4 v9, 0x7

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_3

    .line 387
    .end local v0    # "recipient":Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "email":Ljava/lang/String;
    .end local v3    # "addressLabel":Ljava/lang/String;
    .end local v4    # "contactId":J
    .end local v6    # "lookupKey":Ljava/lang/String;
    .end local v7    # "addressType":I
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 388
    return-void

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private fillContactDataFromEmailContentUri(Landroid/net/Uri;Ljava/util/List;Ljava/util/Map;)V
    .locals 7
    .param p1, "contactUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "recipients":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    .local p3, "recipientMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    const/4 v3, 0x0

    .line 205
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientLoader;->PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 207
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-direct {p0, v6, p2, p3}, Lcom/fsck/k9/activity/compose/RecipientLoader;->fillContactDataFromCursor(Landroid/database/Cursor;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private fillContactDataFromLookupKey(Landroid/net/Uri;Ljava/util/List;Ljava/util/Map;)V
    .locals 9
    .param p1, "lookupKeyUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p2, "recipients":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    .local p3, "recipientMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 218
    .local v6, "contactContentUri":Landroid/net/Uri;
    if-nez v6, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-static {v6}, Lcom/fsck/k9/activity/compose/RecipientLoader;->getContactIdFromContactUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 224
    .local v7, "contactIdStr":Ljava/lang/String;
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientLoader;->PROJECTION:[Ljava/lang/String;

    const-string v3, "contact_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 229
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 233
    invoke-direct {p0, v8, p2, p3}, Lcom/fsck/k9/activity/compose/RecipientLoader;->fillContactDataFromCursor(Landroid/database/Cursor;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private fillContactDataFromNameAndEmail(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Z
    .locals 9
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "recipients":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    .local p3, "recipientMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 313
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    .line 315
    .local v1, "queryUri":Landroid/net/Uri;
    const-string v3, "display_name LIKE ?  OR (data1 LIKE ? AND mimetype = \'vnd.android.cursor.item/email_v2\')"

    .line 317
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v7

    aput-object p1, v4, v8

    .line 318
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientLoader;->PROJECTION:[Ljava/lang/String;

    const-string v5, "times_contacted DESC, sort_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 320
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v7

    .line 326
    :goto_0
    return v0

    .line 324
    :cond_0
    invoke-direct {p0, v6, p2, p3}, Lcom/fsck/k9/activity/compose/RecipientLoader;->fillContactDataFromCursor(Landroid/database/Cursor;Ljava/util/List;Ljava/util/Map;)V

    move v0, v8

    .line 326
    goto :goto_0
.end method

.method private fillContactDataFromNickname(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Z
    .locals 12
    .param p1, "nickname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 279
    .local p2, "recipients":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    .local p3, "recipientMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    const/4 v8, 0x0

    .line 281
    .local v8, "hasContact":Z
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    .line 283
    .local v1, "queryUri":Landroid/net/Uri;
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/compose/RecipientLoader;->getNicknameCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 285
    .local v11, "nicknameCursor":Landroid/database/Cursor;
    if-nez v11, :cond_0

    move v9, v8

    .line 305
    .end local v8    # "hasContact":Z
    .local v9, "hasContact":I
    :goto_0
    return v9

    .line 290
    .end local v9    # "hasContact":I
    .restart local v8    # "hasContact":Z
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 292
    .local v10, "id":Ljava/lang/String;
    const-string v3, "contact_id = ?"

    .line 293
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const-string v5, "times_contacted DESC, sort_key"

    .line 294
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 296
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 297
    .local v6, "contactNickname":Ljava/lang/String;
    invoke-direct {p0, v7, p2, p3, v6}, Lcom/fsck/k9/activity/compose/RecipientLoader;->fillContactDataFromCursor(Landroid/database/Cursor;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    const/4 v8, 0x1

    .line 300
    goto :goto_1

    .line 302
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "contactNickname":Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v10    # "id":Ljava/lang/String;
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move v9, v8

    .line 305
    .restart local v9    # "hasContact":I
    goto :goto_0

    .line 302
    .end local v9    # "hasContact":I
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private fillContactDataFromQuery(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p2, "recipients":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    .local p3, "recipientMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    const/4 v0, 0x0

    .line 259
    .local v0, "foundValidCursor":Z
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/activity/compose/RecipientLoader;->fillContactDataFromNickname(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 260
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/activity/compose/RecipientLoader;->fillContactDataFromNameAndEmail(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 262
    if-eqz v0, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/RecipientLoader;->registerContentObserver()V

    .line 266
    :cond_0
    return-void
.end method

.method private fillCryptoStatusData(Ljava/util/Map;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    .local p1, "recipientMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 392
    .local v15, "recipientList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v15, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 395
    .local v5, "recipientAddresses":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/activity/compose/RecipientLoader;->cryptoProvider:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".provider.exported/autocrypt_status"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 397
    .local v2, "queryUri":Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/fsck/k9/activity/compose/RecipientLoader;->PROJECTION_CRYPTO_STATUS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 403
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-direct/range {p0 .. p1}, Lcom/fsck/k9/activity/compose/RecipientLoader;->initializeCryptoStatusForAllRecipients(Ljava/util/Map;)V

    .line 405
    if-nez v9, :cond_1

    .line 443
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 398
    :catch_0
    move-exception v10

    .line 400
    .local v10, "e":Ljava/lang/SecurityException;
    goto :goto_0

    .line 409
    .end local v10    # "e":Ljava/lang/SecurityException;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 410
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 411
    .local v12, "email":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 412
    .local v16, "uidStatus":I
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 414
    .local v8, "autocryptStatus":I
    move/from16 v0, v16

    if-le v0, v8, :cond_3

    move/from16 v11, v16

    .line 416
    .local v11, "effectiveStatus":I
    :goto_1
    invoke-static {v12}, Lcom/fsck/k9/mail/Address;->parseUnencoded(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_1

    aget-object v7, v3, v1

    .line 417
    .local v7, "address":Lcom/fsck/k9/mail/Address;
    invoke-virtual {v7}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v13

    .line 418
    .local v13, "emailAddress":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 419
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 420
    .local v14, "recipient":Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    packed-switch v11, :pswitch_data_0

    .line 416
    .end local v14    # "recipient":Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v7    # "address":Lcom/fsck/k9/mail/Address;
    .end local v11    # "effectiveStatus":I
    .end local v13    # "emailAddress":Ljava/lang/String;
    :cond_3
    move v11, v8

    .line 414
    goto :goto_1

    .line 422
    .restart local v7    # "address":Lcom/fsck/k9/mail/Address;
    .restart local v11    # "effectiveStatus":I
    .restart local v13    # "emailAddress":Ljava/lang/String;
    .restart local v14    # "recipient":Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    :pswitch_0
    invoke-virtual {v14}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->getCryptoStatus()Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    move-result-object v6

    sget-object v17, Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;->UNAVAILABLE:Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    move-object/from16 v0, v17

    if-ne v6, v0, :cond_2

    .line 423
    sget-object v6, Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;->AVAILABLE_UNTRUSTED:Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    invoke-virtual {v14, v6}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->setCryptoStatus(Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;)V

    goto :goto_3

    .line 428
    :pswitch_1
    invoke-virtual {v14}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->getCryptoStatus()Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    move-result-object v6

    sget-object v17, Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;->AVAILABLE_TRUSTED:Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    move-object/from16 v0, v17

    if-eq v6, v0, :cond_2

    .line 429
    sget-object v6, Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;->AVAILABLE_TRUSTED:Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    invoke-virtual {v14, v6}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->setCryptoStatus(Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;)V

    goto :goto_3

    .line 437
    .end local v7    # "address":Lcom/fsck/k9/mail/Address;
    .end local v8    # "autocryptStatus":I
    .end local v11    # "effectiveStatus":I
    .end local v12    # "email":Ljava/lang/String;
    .end local v13    # "emailAddress":Ljava/lang/String;
    .end local v14    # "recipient":Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    .end local v16    # "uidStatus":I
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 439
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fsck/k9/activity/compose/RecipientLoader;->observerKey:Landroid/content/Loader$ForceLoadContentObserver;

    if-eqz v1, :cond_0

    .line 440
    new-instance v1, Landroid/content/Loader$ForceLoadContentObserver;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/fsck/k9/activity/compose/RecipientLoader;->observerKey:Landroid/content/Loader$ForceLoadContentObserver;

    .line 441
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fsck/k9/activity/compose/RecipientLoader;->observerKey:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getContactIdFromContactUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNicknameCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 244
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 246
    .local v1, "queryUriForNickname":Landroid/net/Uri;
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientLoader;->PROJECTION_NICKNAME:[Ljava/lang/String;

    const-string v3, "data1 LIKE ? AND mimetype = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string v6, "vnd.android.cursor.item/nickname"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private initializeCryptoStatusForAllRecipients(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, "recipientMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 447
    .local v0, "recipient":Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    sget-object v2, Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;->UNAVAILABLE:Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;

    invoke-virtual {v0, v2}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->setCryptoStatus(Lcom/fsck/k9/view/RecipientSelectView$RecipientCryptoStatus;)V

    goto :goto_0

    .line 449
    .end local v0    # "recipient":Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    :cond_0
    return-void
.end method

.method private registerContentObserver()V
    .locals 4

    .prologue
    .line 269
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->observerContact:Landroid/content/Loader$ForceLoadContentObserver;

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->observerContact:Landroid/content/Loader$ForceLoadContentObserver;

    .line 271
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->observerContact:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 273
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/compose/RecipientLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->cachedRecipients:Ljava/util/List;

    .line 455
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 458
    :cond_0
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v1, "recipients":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 132
    .local v0, "recipientMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->addresses:[Lcom/fsck/k9/mail/Address;

    if-eqz v2, :cond_2

    .line 133
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->addresses:[Lcom/fsck/k9/mail/Address;

    invoke-direct {p0, v2, v1, v0}, Lcom/fsck/k9/activity/compose/RecipientLoader;->fillContactDataFromAddresses([Lcom/fsck/k9/mail/Address;Ljava/util/List;Ljava/util/Map;)V

    .line 148
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 156
    :cond_1
    :goto_1
    return-object v1

    .line 134
    :cond_2
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contactUri:Landroid/net/Uri;

    if-eqz v2, :cond_3

    .line 135
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contactUri:Landroid/net/Uri;

    invoke-direct {p0, v2, v1, v0}, Lcom/fsck/k9/activity/compose/RecipientLoader;->fillContactDataFromEmailContentUri(Landroid/net/Uri;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0

    .line 136
    :cond_3
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->query:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 137
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->query:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v0}, Lcom/fsck/k9/activity/compose/RecipientLoader;->fillContactDataFromQuery(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 139
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->cryptoProvider:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->query:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v0}, Lcom/fsck/k9/activity/compose/RecipientLoader;->fillContactDataFromCryptoProvider(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0

    .line 142
    :cond_4
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->lookupKeyUri:Landroid/net/Uri;

    if-eqz v2, :cond_5

    .line 143
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->lookupKeyUri:Landroid/net/Uri;

    invoke-direct {p0, v2, v1, v0}, Lcom/fsck/k9/activity/compose/RecipientLoader;->fillContactDataFromLookupKey(Landroid/net/Uri;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0

    .line 145
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "loader must be initialized with query or list of addresses!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :cond_6
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->cryptoProvider:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 153
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/compose/RecipientLoader;->fillCryptoStatusData(Ljava/util/Map;)V

    goto :goto_1
.end method

.method protected onAbandon()V
    .locals 2

    .prologue
    .line 474
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onAbandon()V

    .line 476
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->observerKey:Landroid/content/Loader$ForceLoadContentObserver;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->observerKey:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->observerContact:Landroid/content/Loader$ForceLoadContentObserver;

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->observerContact:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 482
    :cond_1
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->cachedRecipients:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->cachedRecipients:Ljava/util/List;

    invoke-super {p0, v0}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->cachedRecipients:Ljava/util/List;

    if-nez v0, :cond_0

    .line 468
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientLoader;->forceLoad()V

    goto :goto_0
.end method
