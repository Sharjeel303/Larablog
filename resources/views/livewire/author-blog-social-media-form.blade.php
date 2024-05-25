<div>
   
 <form method="POST" wire:submit.prevent='updatBlogSocialMedia()'>
                                <div class="row">
                                    <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">Facebook</label>
                                        <input type="text" class="form-control" placeholder="Facebook Url" wire:model='facebook_url'>
                                        <span class="text-danger">@error('facebook_url'){{ $message }}@enderror</span>
                                    </div>
                                    </div>
                                    <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">Instagram</label>
                                        <input type="text" class="form-control" placeholder="Instagram Url" wire:model='instagram_url'>
                                        <span class="text-danger">@error('instagram_url'){{ $message }}@enderror</span>
                                    </div>
                                    </div>
                                    <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">Twitter</label>
                                        <input type="text" class="form-control" placeholder="Twitter Url" wire:model='twitter_url'>
                                        <span class="text-danger">@error('twitter_url'){{ $message }}@enderror</span>
                                    </div>
                                    </div>
                                    <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">Linkedin</label>
                                        <input type="text" class="form-control" placeholder="Linkedin Url" wire:model='linkedin_url'>
                                        <span class="text-danger">@error('linkedin_url'){{ $message }}@enderror</span>
                                    </div>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary">Update</button>
                            </form>

</div>
