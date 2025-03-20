.class final Lcom/dropbox/sync/android/DbxFeatureInfo;
.super Ljava/lang/Object;
.source "DbxFeatureInfo.java"


# instance fields
.field final mFeatureName:Ljava/lang/String;

.field final mOverrideRule:Lcom/dropbox/sync/android/GandalfOverrideRule;

.field final mVariants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dropbox/sync/android/DbxVariant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/sync/android/GandalfOverrideRule;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "overrideRule"    # Lcom/dropbox/sync/android/GandalfOverrideRule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dropbox/sync/android/GandalfOverrideRule;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dropbox/sync/android/DbxVariant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p3, "variants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/dropbox/sync/android/DbxVariant;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxFeatureInfo;->mFeatureName:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/dropbox/sync/android/DbxFeatureInfo;->mOverrideRule:Lcom/dropbox/sync/android/GandalfOverrideRule;

    .line 26
    iput-object p3, p0, Lcom/dropbox/sync/android/DbxFeatureInfo;->mVariants:Ljava/util/ArrayList;

    .line 27
    return-void
.end method


# virtual methods
.method public getFeatureName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFeatureInfo;->mFeatureName:Ljava/lang/String;

    return-object v0
.end method

.method public getOverrideRule()Lcom/dropbox/sync/android/GandalfOverrideRule;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFeatureInfo;->mOverrideRule:Lcom/dropbox/sync/android/GandalfOverrideRule;

    return-object v0
.end method

.method public getVariants()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dropbox/sync/android/DbxVariant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFeatureInfo;->mVariants:Ljava/util/ArrayList;

    return-object v0
.end method
