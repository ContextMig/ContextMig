.class Landroid/support/v7/preference/PreferenceGroupAdapter$1;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/PreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/preference/PreferenceGroupAdapter;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/PreferenceGroupAdapter;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$1;->this$0:Landroid/support/v7/preference/PreferenceGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$1;->this$0:Landroid/support/v7/preference/PreferenceGroupAdapter;

    invoke-static {v0}, Landroid/support/v7/preference/PreferenceGroupAdapter;->access$000(Landroid/support/v7/preference/PreferenceGroupAdapter;)V

    .line 73
    return-void
.end method
