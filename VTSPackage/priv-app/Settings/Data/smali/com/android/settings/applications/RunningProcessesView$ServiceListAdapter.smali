.class Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceListAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mOrigItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mShowBackground:Z

.field final mState:Lcom/android/settings/applications/RunningState;

.field private selectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/applications/RunningProcessesView;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningProcessesView;Lcom/android/settings/applications/RunningState;)V
    .locals 2
    .param p2, "state"    # Lcom/android/settings/applications/RunningState;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings/applications/RunningProcessesView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->selectedList:Ljava/util/List;

    .line 239
    iput-object p2, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 243
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->selectedList:Ljava/util/List;

    return-object v0
.end method

.method private updateSelectedList()V
    .locals 8

    .prologue
    .line 379
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->selectedList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 381
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 382
    .local v0, "exist":Z
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 383
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 384
    .local v4, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 385
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 386
    .local v2, "item":Lcom/android/settings/applications/RunningState$MergedItem;
    if-eqz v2, :cond_1

    iget-object v5, v2, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-eqz v5, :cond_1

    iget-object v5, v2, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 389
    iget-object v5, v2, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 390
    const/4 v0, 0x1

    .line 394
    .end local v2    # "item":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_2
    if-nez v0, :cond_0

    .line 395
    const-string v5, "RunningProcessesView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not exist packageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 399
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 334
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v5, v4, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 335
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p2, v4, :cond_0

    .line 339
    monitor-exit v5

    .line 370
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 342
    .local v3, "vh":Lcom/android/settings/applications/RunningProcessesView$ViewHolder;
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 343
    .local v1, "item":Lcom/android/settings/applications/RunningState$MergedItem;
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v6, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v6, v6, Lcom/android/settings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v1, v6}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    .line 344
    .local v0, "ai":Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v4, v4, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v4, v1, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v2, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 348
    .local v2, "packageName":Ljava/lang/String;
    const-string v4, "com.android.settings"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 349
    iget-object v4, v3, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 354
    :goto_1
    iget-object v4, v3, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    new-instance v6, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter$1;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter$1;-><init>(Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v4, v3, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->selectedList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 369
    monitor-exit v5

    goto :goto_0

    .end local v0    # "ai":Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    .end local v1    # "item":Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "vh":Lcom/android/settings/applications/RunningProcessesView$ViewHolder;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 352
    .restart local v0    # "ai":Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    .restart local v1    # "item":Lcom/android/settings/applications/RunningState$MergedItem;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "vh":Lcom/android/settings/applications/RunningProcessesView$ViewHolder;
    :cond_1
    :try_start_1
    iget-object v4, v3, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSelectedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->selectedList:Ljava/util/List;

    return-object v0
.end method

.method getShowBackground()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 318
    if-nez p2, :cond_0

    .line 319
    invoke-virtual {p0, p3}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 323
    .local v0, "v":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->bindView(Landroid/view/View;I)V

    .line 324
    return-object v0

    .line 321
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 309
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 313
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mIsProcess:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 328
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400c1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 329
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 330
    return-object v0
.end method

.method refreshItems()V
    .locals 3

    .prologue
    .line 263
    iget-boolean v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 266
    .local v0, "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mOrigItems:Ljava/util/ArrayList;

    if-eq v1, v0, :cond_0

    .line 267
    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mOrigItems:Ljava/util/ArrayList;

    .line 268
    if-nez v0, :cond_2

    .line 269
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 280
    :cond_0
    :goto_1
    return-void

    .line 263
    .end local v0    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 271
    .restart local v0    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 272
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 274
    invoke-direct {p0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->updateSelectedList()V

    .line 275
    iget-boolean v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1
.end method

.method setShowBackground(Z)V
    .locals 2
    .param p1, "showBackground"    # Z

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eq v0, p1, :cond_0

    .line 247
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    .line 248
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/RunningState;->setWatchingBackgroundItems(Z)V

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 250
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 251
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    iget-boolean v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LinearColorBar;->setShowingGreen(Z)V

    .line 253
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->selectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 256
    :cond_0
    return-void
.end method
