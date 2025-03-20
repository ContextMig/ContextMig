.class Lcom/fsck/k9/ui/ContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/ui/ContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/ui/ContactBadge;


# direct methods
.method constructor <init>(Lcom/fsck/k9/ui/ContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/fsck/k9/ui/ContactBadge$QueryHandler;->this$0:Lcom/fsck/k9/ui/ContactBadge;

    .line 169
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 170
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v11, 0x0

    .line 174
    const/4 v6, 0x0

    .line 175
    .local v6, "lookupUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 176
    .local v2, "createUri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 177
    .local v7, "trigger":Z
    if-eqz p2, :cond_3

    check-cast p2, Landroid/os/Bundle;

    .end local p2    # "cookie":Ljava/lang/Object;
    move-object v3, p2

    .line 179
    .local v3, "extras":Landroid/os/Bundle;
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 196
    :cond_0
    :goto_1
    if-eqz p3, :cond_1

    .line 197
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_1
    iget-object v8, p0, Lcom/fsck/k9/ui/ContactBadge$QueryHandler;->this$0:Lcom/fsck/k9/ui/ContactBadge;

    invoke-static {v8, v6}, Lcom/fsck/k9/ui/ContactBadge;->access$002(Lcom/fsck/k9/ui/ContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    .line 202
    iget-object v8, p0, Lcom/fsck/k9/ui/ContactBadge$QueryHandler;->this$0:Lcom/fsck/k9/ui/ContactBadge;

    invoke-static {v8}, Lcom/fsck/k9/ui/ContactBadge;->access$100(Lcom/fsck/k9/ui/ContactBadge;)V

    .line 204
    if-eqz v7, :cond_5

    if-eqz v6, :cond_5

    .line 206
    iget-object v8, p0, Lcom/fsck/k9/ui/ContactBadge$QueryHandler;->this$0:Lcom/fsck/k9/ui/ContactBadge;

    .line 207
    invoke-virtual {v8}, Lcom/fsck/k9/ui/ContactBadge;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/fsck/k9/ui/ContactBadge$QueryHandler;->this$0:Lcom/fsck/k9/ui/ContactBadge;

    const/4 v10, 0x3

    .line 206
    invoke-static {v8, v9, v6, v10, v11}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 215
    :cond_2
    :goto_2
    return-void

    .line 177
    .end local v3    # "extras":Landroid/os/Bundle;
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_3
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 181
    .end local p2    # "cookie":Ljava/lang/Object;
    .restart local v3    # "extras":Landroid/os/Bundle;
    :pswitch_0
    const/4 v7, 0x1

    .line 182
    :try_start_0
    const-string v8, "mailto"

    const-string v9, "uri_content"

    .line 183
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 182
    invoke-static {v8, v9, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 187
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 188
    const/4 v8, 0x0

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 189
    .local v0, "contactId":J
    const/4 v8, 0x1

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, "lookupKey":Ljava/lang/String;
    invoke-static {v0, v1, v5}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    goto :goto_1

    .line 196
    .end local v0    # "contactId":J
    .end local v5    # "lookupKey":Ljava/lang/String;
    :catchall_0
    move-exception v8

    if-eqz p3, :cond_4

    .line 197
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v8

    .line 208
    :cond_5
    if-eqz v2, :cond_2

    .line 210
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v4, v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 211
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "uri_content"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 213
    iget-object v8, p0, Lcom/fsck/k9/ui/ContactBadge$QueryHandler;->this$0:Lcom/fsck/k9/ui/ContactBadge;

    invoke-virtual {v8}, Lcom/fsck/k9/ui/ContactBadge;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
