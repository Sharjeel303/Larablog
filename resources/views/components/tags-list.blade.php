<div>
    @if (all_tags() != null)
        @php
            $allTagsString = all_tags();
            $allTagsArray = explode(',', $allTagsString);
        @endphp
        <div class="col-lg-12 col-md-6">
            <div class="widget">
                <h2 class="section-title mb-3">Tags</h2>
                <div class="widget-body">
                    <ul class="widget-list">
                        @foreach (array_unique($allTagsArray) as $tag)
                            <li><a href="{{ route('tag_posts', $tag) }}">#{{ $tag }}</a>
                            </li>
                        @endforeach

                    </ul>
                </div>
            </div>
        </div>
    @endif
</div>
