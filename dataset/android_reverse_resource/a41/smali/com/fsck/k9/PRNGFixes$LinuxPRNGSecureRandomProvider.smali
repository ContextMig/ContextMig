.class Lcom/fsck/k9/PRNGFixes$LinuxPRNGSecureRandomProvider;
.super Ljava/security/Provider;
.source "PRNGFixes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/PRNGFixes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinuxPRNGSecureRandomProvider"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5abe0583818e93eaL


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 148
    const-string v0, "LinuxPRNG"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string v1, "A Linux-specific random number provider that uses /dev/urandom"

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 156
    const-string v0, "SecureRandom.SHA1PRNG"

    const-class v1, Lcom/fsck/k9/PRNGFixes$LinuxPRNGSecureRandom;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/PRNGFixes$LinuxPRNGSecureRandomProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v0, "SecureRandom.SHA1PRNG ImplementedIn"

    const-string v1, "Software"

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/PRNGFixes$LinuxPRNGSecureRandomProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method
