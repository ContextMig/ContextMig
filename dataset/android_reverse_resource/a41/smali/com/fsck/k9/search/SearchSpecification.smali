.class public interface abstract Lcom/fsck/k9/search/SearchSpecification;
.super Ljava/lang/Object;
.source "SearchSpecification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/search/SearchSpecification$SearchCondition;,
        Lcom/fsck/k9/search/SearchSpecification$SearchField;,
        Lcom/fsck/k9/search/SearchSpecification$Attribute;
    }
.end annotation


# static fields
.field public static final ALL_ACCOUNTS:Ljava/lang/String; = "allAccounts"


# virtual methods
.method public abstract getAccountUuids()[Ljava/lang/String;
.end method

.method public abstract getConditions()Lcom/fsck/k9/search/ConditionsTreeNode;
.end method

.method public abstract getName()Ljava/lang/String;
.end method
