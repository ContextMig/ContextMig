.class public Lorg/mozilla/focus/activity/TextActionActivity;
.super Landroid/app/Activity;
.source "TextActionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v0, Lmozilla/components/support/utils/SafeIntent;

    invoke-virtual {p0}, Lorg/mozilla/focus/activity/TextActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v0, v5}, Lmozilla/components/support/utils/SafeIntent;-><init>(Landroid/content/Intent;)V

    .line 31
    .local v0, "intent":Lmozilla/components/support/utils/SafeIntent;
    const-string v5, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {v0, v5}, Lmozilla/components/support/utils/SafeIntent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 33
    .local v3, "searchTextCharSequence":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 34
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "searchText":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v2}, Lorg/mozilla/focus/utils/UrlUtils;->createSearchUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "searchUrl":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lorg/mozilla/focus/activity/MainActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v1, "searchIntent":Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v5, "text_selection"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, v1}, Lorg/mozilla/focus/activity/TextActionActivity;->startActivity(Landroid/content/Intent;)V

    .line 47
    invoke-virtual {p0}, Lorg/mozilla/focus/activity/TextActionActivity;->finish()V

    .line 48
    return-void

    .line 36
    .end local v1    # "searchIntent":Landroid/content/Intent;
    .end local v2    # "searchText":Ljava/lang/String;
    .end local v4    # "searchUrl":Ljava/lang/String;
    :cond_0
    const-string v2, ""

    .restart local v2    # "searchText":Ljava/lang/String;
    goto :goto_0
.end method
