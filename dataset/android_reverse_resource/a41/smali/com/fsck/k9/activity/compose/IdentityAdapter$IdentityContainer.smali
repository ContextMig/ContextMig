.class public Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;
.super Ljava/lang/Object;
.source "IdentityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/compose/IdentityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IdentityContainer"
.end annotation


# instance fields
.field public final account:Lcom/fsck/k9/Account;

.field public final identity:Lcom/fsck/k9/Identity;


# direct methods
.method constructor <init>(Lcom/fsck/k9/Identity;Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "identity"    # Lcom/fsck/k9/Identity;
    .param p2, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;->identity:Lcom/fsck/k9/Identity;

    .line 138
    iput-object p2, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;->account:Lcom/fsck/k9/Account;

    .line 139
    return-void
.end method
