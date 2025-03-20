.class Lcom/fsck/k9/mail/ssl/LocalKeyStore$LocalKeyStoreHolder;
.super Ljava/lang/Object;
.source "LocalKeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/ssl/LocalKeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalKeyStoreHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/fsck/k9/mail/ssl/LocalKeyStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/fsck/k9/mail/ssl/LocalKeyStore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;-><init>(Lcom/fsck/k9/mail/ssl/LocalKeyStore$1;)V

    sput-object v0, Lcom/fsck/k9/mail/ssl/LocalKeyStore$LocalKeyStoreHolder;->INSTANCE:Lcom/fsck/k9/mail/ssl/LocalKeyStore;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
