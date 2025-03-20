.class public Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;
.super Ljava/lang/Object;
.source "AutocryptStatusInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/message/AutocryptStatusInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecipientAutocryptStatus"
.end annotation


# instance fields
.field public final intent:Landroid/app/PendingIntent;

.field public final type:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "type"    # Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;->type:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 93
    iput-object p2, p0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;->intent:Landroid/app/PendingIntent;

    .line 94
    return-void
.end method


# virtual methods
.method public hasPendingIntent()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;->intent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
